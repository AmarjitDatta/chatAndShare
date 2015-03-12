package com.chat.actions;

import com.chat.database.util.DatabaseUtil;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.lang.xwork.StringUtils;

public class SaveUserData extends ActionSupport {
  private String latitude;
  private String longitude;
  private String ipAddress;
  private String userName;

  public String getLatitude() {
    return this.latitude;
  }

  public void setLatitude(String pLatitude) {
    this.latitude = pLatitude;
  }

  public String getLongitude() {
    return this.longitude;
  }

  public void setLongitude(String pLongitude) {
    this.longitude = pLongitude;
  }

  public String getIpAddress() {
    return this.ipAddress;
  }

  public void setIpAddress(String pIpAddress) {
    this.ipAddress = pIpAddress;
  }

  public String getUserName() {
    return this.userName;
  }

  public void setUserName(String pUserName) {
    this.userName = pUserName;
  }

  public String execute() throws Exception {
    /*If username is null, it means */
    if (getUserName() != null && !getUserName().equalsIgnoreCase("admin")) {
      DatabaseUtil.getInstance().insertUserInformation(getUserName(), getIpAddress(), getLatitude(), getLongitude());
    }
    return "success";
  }
}
