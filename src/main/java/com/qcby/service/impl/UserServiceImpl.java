package com.qcby.service.impl;

import com.qcby.dao.UserDao;
import com.qcby.model.User;
import com.qcby.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    public UserDao userDao;

    @Override
    public boolean Login(User u, HttpSession session) {
        List<User> userList = userDao.findByID(u);
        if (!userList.isEmpty()
                && userList.get(0).getUserPassword().equals(u.getUserPassword())) {
            session.setAttribute("user",userList.get(0));
            return true;
        }
        return false;
    }

    @Override
    public boolean Login(User u) {
        List<User> userList = userDao.findByID(u);
        if (!userList.isEmpty()
                && userList.get(0).getUserPassword().equals(u.getUserPassword())) {
            return true;
        }
        return false;
    }
    @Override
    public boolean insert(User u) {
        if (userDao.insert(u)>0) return true;
        return false;
    }
    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }
}
