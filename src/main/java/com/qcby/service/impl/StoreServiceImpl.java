package com.qcby.service.impl;

import com.qcby.dao.StoreDao;
import com.qcby.model.Store;
import com.qcby.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class StoreServiceImpl implements StoreService {
    @Autowired
    public StoreDao storeDao;

    @Override
    public boolean insert(Store s) {
        if (storeDao.insert(s) > 0) return true;
        return false;
    }

    @Override
    public boolean update(Store s) {
        if (storeDao.update(s) > 0) return true;
        return false;
    }

    @Override
    public List<Map<String, Object>> QueryEmployeeNum() {
        return storeDao.QueryEmployeeNum();
    }
}
