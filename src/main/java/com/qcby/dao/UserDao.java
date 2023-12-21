package com.qcby.dao;

import com.qcby.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    public List<User> findByID(User u);
    public List<User> findAll();
    public int insert(User u);
    public int updatePassword(User u);
}