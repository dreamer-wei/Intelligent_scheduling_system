package com.qcby.service;

import com.qcby.model.User;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    public boolean Login(User u, HttpSession session);

    public boolean Login(User u);

    public boolean insert(User u);

    public List<User> findAll();
}
