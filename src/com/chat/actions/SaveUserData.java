package com.chat.actions;

public class SaveUserData {
  private static String latitude;
  private static String longitude;
  private static String ipAddress;

  public static String getLatitude() {
    return latitude;
  }

  public static void setLatitude(String latitude) {
    SaveUserData.latitude = latitude;
  }

  public static String getLongitude() {
    return longitude;
  }

  public static void setLongitude(String longitude) {
    SaveUserData.longitude = longitude;
  }

  public static String getIpAddress() {
    return ipAddress;
  }

  public static void setIpAddress(String ipAddress) {
    SaveUserData.ipAddress = ipAddress;
  }

  public String execute() throws Exception {
    return "success";
  }
}
