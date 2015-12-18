package java76.pms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface PageController {
  String execute(
      HttpServletRequest request, 
      HttpServletResponse response) throws Exception;
}
