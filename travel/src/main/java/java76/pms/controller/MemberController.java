package java76.pms.controller;

import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java76.pms.domain.Member;
import java76.pms.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Autowired MemberService memberService;
	@Autowired ServletContext servletContext;

	@RequestMapping("list")
	public String list(
			@RequestParam(defaultValue="1") int pageNo,
			@RequestParam(defaultValue="10") int pageSize,
			@RequestParam(defaultValue="id") String keyword,
			@RequestParam(defaultValue="asc") String align,
			String search,
			String word,
			Model model) throws Exception {

		if (pageNo > 1) { // 이전 페이가 있다면
			model.addAttribute("prevPageNo", pageNo - 1);
		}

		int totalCount = memberService.countAll();
		int lastPageNo = totalCount / pageSize;
		if ((totalCount % pageSize)  > 0) {
			lastPageNo++;
		}

		if (pageNo < lastPageNo) { // 다음 페이지가 있다면
			model.addAttribute("nextPageNo", pageNo + 1);
		}

		model.addAttribute("pageSize", pageSize);

		model.addAttribute("members", 
				memberService.list(pageNo, pageSize,keyword, align,search,word));

		return "member/MemberList";

	}
	@RequestMapping(value="add", method=RequestMethod.GET)
	public String form() {
		return "member/MemberForm";
	}

	@RequestMapping(value="add", method=RequestMethod.POST)
	public String add(Member member) throws Exception {

		memberService.insert(member);

		return "redirect:list.do";

	}

	@RequestMapping("detail")
	public String detail(String id, Model model) 
			throws Exception {

		Member member = memberService.selectOne(id);
		model.addAttribute("member", member);

		return "member/MemberDetail";
	}

	@RequestMapping("update")
	public String post(
			Member member,
			Model model) throws Exception {


		if (memberService.update(member) <= 0) {
			model.addAttribute("errorCode", "401");
			return "member/MemberAuthError";
		} 

		return "redirect:list.do";
	}

	@RequestMapping("delete")
	public String delete(
			String id,
			String password,
			Model model) throws Exception {

		HashMap<String,Object> paramMap = new HashMap<>();
		paramMap.put("id", id);
		paramMap.put("password", password);

		if (memberService.delete(paramMap) <= 0) {
			model.addAttribute("errorCode", "401");
			return "member/StudentAuthError";
		}
		return "redirect:list.do";
	}

}
