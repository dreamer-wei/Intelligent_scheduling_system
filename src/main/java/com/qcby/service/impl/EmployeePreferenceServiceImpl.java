package com.qcby.service.impl;

import com.qcby.dao.EmployeePreferenceDao;
import com.qcby.model.EmployeePreference;
import com.qcby.service.EmployeePerferenceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeePreferenceServiceImpl implements EmployeePerferenceService {
    @Autowired
    public EmployeePreferenceDao employeePreferenceDao;

    public boolean updatePreference(EmployeePreference ep) {
        return employeePreferenceDao.update(ep) > 0;
    }
}
