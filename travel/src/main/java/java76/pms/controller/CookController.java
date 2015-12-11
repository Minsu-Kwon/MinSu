package java76.pms.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java76.pms.domain.Cook;
import java76.pms.service.CookService;
import java76.pms.util.MultipartHelper;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/cook/*")
public class CookController { 
	private static final Logger logger = Logger.getLogger(CookController.class); 
  
  public static final String SAVED_DIR = "/attachfile";
  
  @Autowired CookService cookService;
  @Autowired ServletContext servletContext;
  
  @RequestMapping("list")
  public String list(
      @RequestParam(required=false, defaultValue="1") int pageNo,
      @RequestParam(required=false, defaultValue="10") int pageSize,
      @RequestParam(defaultValue="no") String keyword,
      @RequestParam(required=false, defaultValue="desc") String align,
      String search,
      String word,
      Model model) throws Exception {
  		logger.debug("list() 호출됨");   
  		

      
  	 if (pageNo > 1) { // 이전 페이가 있다면
       model.addAttribute("prevPageNo", pageNo - 1);
     }

     int totalCount = cookService.countAll();
     int lastPageNo = totalCount / pageSize;
     if ((totalCount % pageSize)  > 0) {
       lastPageNo++;
     }
     
     if (pageNo < lastPageNo) { // 다음 페이지가 있다면
       model.addAttribute("nextPageNo", pageNo + 1);
     }
     
     model.addAttribute("pageSize", pageSize);
     
     model.addAttribute("cooks", 
    		 cookService.list(pageNo, pageSize,keyword, align,search,word));
    return "cook/BoardList";
  }
  
  @RequestMapping(value="add", method=RequestMethod.GET)
  public String form() {
    return "cook/CookForm";
  }
      
  @RequestMapping(value="add", method=RequestMethod.POST)
  public String add(Cook cook, MultipartFile file) throws Exception {
    
    if (file.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(file.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) 
                                  + "/" + newFileName);
      file.transferTo(attachfile);
      cook.setAttachFile(newFileName);
      
      makeThumbnailImage(
          servletContext.getRealPath(SAVED_DIR) + "/" + newFileName, 
          servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName + ".png");
    }

    cookService.insert(cook);
    
    return "redirect:list.do";
  }
  
  @RequestMapping("detail")
  public String detail(int no, Model model) throws Exception {
    
    Cook cook = cookService.selectOne(no);
    model.addAttribute("cook", cook);
    
    return "cook/BoardDetail";
  }

  @RequestMapping(value="update", method=RequestMethod.POST)
  public String update(
      Cook cook, 
      MultipartFile file, 
      Model model) throws Exception {
    
    if (file.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(file.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath(SAVED_DIR) 
                                  + "/" + newFileName);
      file.transferTo(attachfile);
      cook.setAttachFile(newFileName);
      
      makeThumbnailImage(
          servletContext.getRealPath(SAVED_DIR) + "/" + newFileName, 
          servletContext.getRealPath(SAVED_DIR) + "/s-" + newFileName + ".png");
      
    } else if (cook.getAttachFile().length() == 0) {
    	cook.setAttachFile(null);
    }
    
    if (cookService.update(cook) <= 0) {
      model.addAttribute("errorCode", "401");
      return "cook/BoardAuthError";
    } 
    
    return "redirect:list.do";
  }
  
  @RequestMapping("delete.do")
  public String delete(
      int no, 
      String password,
      Model model) throws Exception {

    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("no", no);
    paramMap.put("password", password);
    
    
    if (cookService.delete(paramMap) <= 0) {
      model.addAttribute("errorCode", "401");
      return "cook/BoardAuthError";
    } 

    return "redirect:list.do";
  }
  
  private void makeThumbnailImage(String originPath, String thumbPath) 
      throws IOException {
    Thumbnails.of(new File(originPath))
    .size(60,44)
    .outputFormat("png")
    .outputQuality(1.0)
    .toFile(new File(thumbPath));
  }
  
}
