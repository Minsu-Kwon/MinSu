package java76.pms.service;


import java.util.List;
import java.util.Map;

import java76.pms.domain.Cook;

public interface CookService {
	 List<Cook> list(int pageNo, int pageSize,String keyword, String align,
			 String search, String word);
  int insert(Cook cook);
  int delete(Map<String,Object> paramMap);
  int update(Cook cook);
  Cook selectOne(int no);
  int countAll();
}
