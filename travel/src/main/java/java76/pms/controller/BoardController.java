package java76.pms.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java76.pms.dao.BoardDao;
import java76.pms.domain.Board;
import java76.pms.util.MultipartHelper;

@Controller
@RequestMapping("/board/*")
public class BoardController { 

  public static final String SAVED_DIR = "/attachfile";

  @Autowired BoardDao boardDao;
  @Autowired ServletContext servletContext;

  @RequestMapping("list")
  public String list(
      @RequestParam(defaultValue="1") int pageNo,
      @RequestParam(defaultValue="4") int pageSize,
      @RequestParam(defaultValue="no") String keyword,
      @RequestParam(defaultValue="desc") String align,
      HttpServletRequest request) throws Exception {

    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("startIndex", (pageNo - 1) * pageSize);
    paramMap.put("length", pageSize);
    paramMap.put("keyword", keyword);
    paramMap.put("align", align);

    List<Board> boards = boardDao.selectList(paramMap);

    request.setAttribute("boards", boards);

    return "board/BoardList";
  }

  @RequestMapping(value="add", method=RequestMethod.GET)
  public String form() {
    return "board/BoardForm";
  }

  @RequestMapping(value="add", method=RequestMethod.POST)
  public String add(Board board, MultipartFile file) throws Exception {

    if (file.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(file.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) 
          + "/" + newFileName);
      file.transferTo(attachfile);
      board.setAttachFile(newFileName);
    }

    boardDao.insert(board);

    return "redirect:list.do";
  }

  @RequestMapping("detail")
  public String detail(int bno, Model model) throws Exception {

    Board board = boardDao.selectOne(bno);
    model.addAttribute("board", board);

    return "board/BoardDetail";
  }

  @RequestMapping(value="update", method=RequestMethod.POST)
  public String update(
      Board board, 
      MultipartFile file, 
      Model model) throws Exception {

    if  (file.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(file.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) 
          + "/" + newFileName);
      file.transferTo(attachfile);
      board.setAttachFile(newFileName);
    } else if (board.getAttachFile().length() == 0) {
      board.setAttachFile(null);
    }

    if (boardDao.update(board) <= 0) {
      model.addAttribute("errorCode", "401");
      return "board/BoardAuthError";
    } 

    return "redirect:list.do";
  }

  @RequestMapping("delete")
  public String delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
    int bno = Integer.parseInt(request.getParameter("bno"));
    String pwd = request.getParameter("pwd");

    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("bno", bno);
    paramMap.put("pwd", pwd);
    
    if (boardDao.delete(paramMap) <= 0) {
      request.setAttribute("errorCode", "401");
      return "board/BoardAuthError";
    } 

    return "redirect:list.do";
  }
}