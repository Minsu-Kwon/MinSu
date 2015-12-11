package java76.pms.service;


import java.util.List;
import java.util.Map;

import java76.pms.domain.Member;

public interface MemberService {
	 List<Member> list(int pageNo, int pageSize,String keyword, String align,
			 String search, String word);
  int insert(Member member);
  int delete(Map<String,Object> paramMap);
  int update(Member member);
  Member selectOne(String id);
  Member login(Map<String,Object> paramMap);
  int countAll();
}
