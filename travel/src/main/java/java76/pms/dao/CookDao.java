package java76.pms.dao;

import java.util.List;
import java.util.Map;

import java76.pms.domain.Cook;

public interface CookDao {
  List<Cook> selectList(Map<String,Object> paramMap);
  
  int insert(Cook cook);
  
  int delete(Map<String,Object> paramMap);
  
  int update(Cook cook);

  Cook selectOne(int no);
  
  int countAll();
}







