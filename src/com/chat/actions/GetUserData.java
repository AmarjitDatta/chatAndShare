package com.chat.actions;

import com.chat.database.util.DatabaseUtil;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.lang.xwork.StringUtils;

public class GetUserData extends ActionSupport {
  private String userName;
  private String latitude;
  private String longitude;
  private String ipAddress;

  public String getUserName() {
    return this.userName;
  }

  public void setUserName(String pUserName) {
    this.userName = pUserName;
  }

  public String getLatitude() {
    return this.latitude;
  }

  public String getLongitude() {
    return this.longitude;
  }

  public String getIpAddress() {
    return this.ipAddress;
  }

  public String execute() throws Exception {
    String userInformation = DatabaseUtil.getInstance().getUserInformation(getUserName());
    if (StringUtils.isNotBlank(userInformation)) {
      String[] informationArray = userInformation.split(",");
      ipAddress = informationArray[1];
      latitude = informationArray[2];
      longitude = informationArray[3];
    }

    return "success";
  }
}
