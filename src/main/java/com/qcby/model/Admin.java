package com.qcby.model;

public class Admin {
    private String AdminID="";
    private String AdminName="";
    private String AdminEmail="";
    private String AdminPosition="";
    private String Store="";

    public String getAdminID() {
        return AdminID;
    }

    public void setAdminID(String adminID) {
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

    public String getStore() {
        return Store;
    }

    public void setStore(String store) {
        Store = store;
    }
}
