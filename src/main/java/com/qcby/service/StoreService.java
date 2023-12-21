package com.qcby.service;

import com.qcby.model.Store;

import java.util.List;
import java.util.Map;

public interface StoreService {
    public boolean insert(Store s);

    public boolean update(Store s);

    public List<Map<String, Object>> QueryEmployeeNum();
}
