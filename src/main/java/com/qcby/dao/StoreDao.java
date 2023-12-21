package com.qcby.dao;

import com.qcby.model.Store;

import java.util.List;
import java.util.Map;

public interface StoreDao {
    public int insert(Store s);

    public int update(Store s);

    public List<Map<String, Object>> QueryEmployeeNum();
}
