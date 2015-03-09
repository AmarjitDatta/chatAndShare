package com.chat.actions;

public class SaveUserData {
  private static String mLatitude;
  private static String mLongitude;

  public static String getmLatitude() {
    return mLatitude;
  }

  public static void setmLatitude(String mLatitude) {
    SaveUserData.mLatitude = mLatitude;
  }

  public static String getmLongitude() {
    return mLongitude;
  }

  public static void setmLongitude(String mLongitude) {
    SaveUserData.mLongitude = mLongitude;
  }

  public String execute() throws Exception {
    return "success";
  }
}
