package com.qcby.model;

public class Store {
    private String StoreID = "";
    private String StoreName = "";
    private String StoreAddress = "";
    private Double StoreSize = 0.0;

    public String getStoreID() {
        return StoreID;
    }

    public void setStoreID(String storeID) {
        StoreID = storeID;
    }

    public String getStoreName() {
        return StoreName;
    }

    public void setStoreName(String storeName) {
        StoreName = storeName;
    }

    public String getStoreAddress() {
        return StoreAddress;
    }

    public void setStoreAddress(String storeAddress) {
        StoreAddress = storeAddress;
    }

    public Double getStoreSize() {
        return StoreSize;
    }

    public void setStoreSize(Double storeSize) {
        StoreSize = storeSize;
    }
}
