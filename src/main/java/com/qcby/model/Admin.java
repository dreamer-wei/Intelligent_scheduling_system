package com.qcby.model;

public class Admin {
    private int AdminID = 0;
    private String AdminName = "";
    private String AdminEmail = "";
    private String AdminPosition = "";
    private int StoreID = 0;

    public int getAdminID() {
        return AdminID;
    }

    public void setAdminID(int adminID) {
        AdminID = adminID;
    }

    public String getAdminName() {
        return AdminName;
    }

    public void setAdminName(String adminName) {
        AdminName = adminName;
    }

    public String getAdminEmail() {
        return AdminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        AdminEmail = adminEmail;
    }

    public String getAdminPosition() {
        return AdminPosition;
    }

    public void setAdminPosition(String adminPosition) {
        AdminPosition = adminPosition;
    }

    public int getStoreID() {
        return StoreID;
    }

    public void setStoreID(int storeID) {
        StoreID = storeID;
    }
}
