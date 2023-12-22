package com.qcby.service;

import com.qcby.model.ClassRule;

import java.util.List;

public interface ClassRuleService {
    public boolean insert(ClassRule cr);

    public boolean update(ClassRule cr);

    public boolean delete(ClassRule cr);

    public List<ClassRule> QueryAll();
}
