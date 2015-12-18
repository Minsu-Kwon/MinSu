package java76.pms.domain;

import java.io.Serializable;
import java.sql.Date;

public class Board  implements Serializable {
  private static final long serialVersionUID = 1L;
  
  int bno;
  String title;
  String attachFile;
  String costs;
  Date cre_dt;
  int views;
  String address;
  String add_ty;
  String other;
  String content;
  int goods;
  int point;
  String pwd;
  
  public String getPwd() {
    return pwd;
  }
  public void setPwd(String pwd) {
    this.pwd = pwd;
  }
  public int getBno() {
    return bno;
  }
  public void setBno(int bno) {
    this.bno = bno;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getAttachFile() {
    return attachFile;
  }
  public void setAttachFile(String attachFile) {
    this.attachFile = attachFile;
  }
  public String getCosts() {
    return costs;
  }
  public void setCosts(String costs) {
    this.costs = costs;
  }
  public Date getCre_dt() {
    return cre_dt;
  }
  public void setCre_dt(Date cre_dt) {
    this.cre_dt = cre_dt;
  }
  public int getViews() {
    return views;
  }
  public void setViews(int views) {
    this.views = views;
  }
  public String getAddress() {
    return address;
  }
  public void setAddress(String address) {
    this.address = address;
  }
  public String getAdd_ty() {
    return add_ty;
  }
  public void setAdd_ty(String add_ty) {
    this.add_ty = add_ty;
  }
  public String getOther() {
    return other;
  }
  public void setOther(String other) {
    this.other = other;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public int getGoods() {
    return goods;
  }
  public void setGoods(int goods) {
    this.goods = goods;
  }
  public int getPoint() {
    return point;
  }
  public void setPoint(int point) {
    this.point = point;
  }
  
 
  
}


