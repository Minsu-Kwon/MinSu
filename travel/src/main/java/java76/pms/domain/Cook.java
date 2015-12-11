package java76.pms.domain;

import java.io.Serializable;
import java.sql.Date;

public class Cook  implements Serializable {
  private static final long serialVersionUID = 1L;

  protected int       no;
  protected String    title;
  protected String    content;
  protected String    writer;
  protected String    need;
  protected int       views;
  protected String    password;
  protected Date      createdDate;
  protected Date      changeDate;
  protected String    attachFile; // 컬럼명 = afile
  
  
  public String getNeed() {
		return need;
	}
	public void setNeed(String need) {
		this.need = need;
	}
	public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public String getWriter() {
    return writer;
  }
  public void setWriter(String writer) {
    this.writer = writer;
  }
  public int getViews() {
    return views;
  }
  public void setViews(int views) {
    this.views = views;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  public Date getChangeDate() {
    return changeDate;
  }
  public void setChangeDate(Date changeDate) {
    this.changeDate = changeDate;
  }
  public String getAttachFile() {
    return attachFile;
  }
  public void setAttachFile(String attachFile) {
    this.attachFile = attachFile;
  }
  
  
}


