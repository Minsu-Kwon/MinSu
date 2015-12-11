package java76.pms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java76.pms.dao.MemberDao;
import java76.pms.domain.Member;
import java76.pms.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired MemberDao memberDao;

	public List<Member> list(int pageNo, int pageSize, String keyword, String align
			,String search, String word) {
		int startIndex = (pageNo - 1) * pageSize;
		if (startIndex < 0) {
			startIndex = 0;
		}

		Map<String,Object> paramMap = 
				new HashMap<String,Object>();
		paramMap.put("startIndex", startIndex);
		paramMap.put("pageSize", pageSize);
		paramMap.put("keyword", keyword);
		paramMap.put("align", align);

		if (search != null && word != null) {
			paramMap.put("search", search);
			String[] wordlist = word.split("\\s+");
			paramMap.put("words", wordlist);
		}


		return memberDao.selectList(paramMap);
	}

	@Override
	public int delete(Map<String,Object> paramMap) {
		return memberDao.delete(paramMap);
	}

	@Override
	public int update(Member member) {
		return memberDao.update(member);
	}

	@Override
	public int insert(Member member) {
		return memberDao.insert(member);
	}

	@Override
	public Member selectOne(String id) {
		return memberDao.selectOne(id);
	}

	@Override
	public int countAll() {
		return memberDao.countAll();
	}
	@Override
	public Member login(Map<String,Object> paramMap) {
		return memberDao.login(paramMap);
	}
}