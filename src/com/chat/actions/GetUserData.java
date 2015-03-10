package com.chat.actions;

import com.chat.database.util.DatabaseUtil;
import com.opensymphony.xwork2.ActionSupport;

public class GetUserData extends ActionSupport {
  private String userName;
  private String userInformation;

  public String getUserName() {
    return this.userName;
  }

  public void setUserName(String pUserName) {
    this.userName = pUserName;
  }

  public String getUserInformation() {
    return this.userInformation;
  }

  public String execute() throws Exception {
    userInformation = DatabaseUtil.getInstance().getUserInformation(getUserName());
    return "success";
  }
}
