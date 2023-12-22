package com.qcby.service.impl;

import com.qcby.dao.ClassRuleDao;
import com.qcby.model.ClassRule;
import com.qcby.service.ClassRuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassRuleServiceImpl implements ClassRuleService {
    @Autowired
    public ClassRuleDao classRuleDao;

    @Override
    public boolean insert(ClassRule cr) {
        return classRuleDao.insert(cr) > 0;
    }

    @Override
    public boolean update(ClassRule cr) {
        return classRuleDao.update(cr) > 0;
    }

    @Override
    public boolean delete(ClassRule cr) {
        return classRuleDao.delete(cr) > 0;
    }

    @Override
    public List<ClassRule> QueryAll() {
        return classRuleDao.QueryAll();
    }
}
