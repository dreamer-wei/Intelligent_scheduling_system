package com.qcby.dao;

import com.qcby.model.ClassRule;

import java.util.List;

public interface ClassRuleDao {
    public int insert(ClassRule cr);

    public int update(ClassRule cr);

    public int delete(ClassRule cr);

    public List<ClassRule> QueryAll();
}
