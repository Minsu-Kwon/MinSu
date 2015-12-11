package java76.pms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java76.pms.dao.CookDao;
import java76.pms.domain.Cook;
import java76.pms.service.CookService;

@Service
public class CookServiceImpl implements CookService {
  @Autowired CookDao cookDao;
  
  public List<Cook> list(int pageNo, int pageSize, String keyword, String align
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

    
    return cookDao.selectList(paramMap);
  }

  @Override
  public int delete(Map<String,Object> paramMap) {
    return cookDao.delete(paramMap);
  }

  @Override
  public int update(Cook cook) {
    return cookDao.update(cook);
  }

  @Override
  public int insert(Cook cook) {
    return cookDao.insert(cook);
  }

  @Override
  public Cook selectOne(int no) {
    return cookDao.selectOne(no);
  }

  @Override
  public int countAll() {
    return cookDao.countAll();
  }
}