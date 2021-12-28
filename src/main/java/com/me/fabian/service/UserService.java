package com.me.fabian.service;

import com.me.fabian.dao.ShopDao;
import com.me.fabian.dao.impl.ShopDaoImpl;
import com.me.fabian.dao.UserDao;
import com.me.fabian.dao.impl.UserDaoImpl;
import com.me.fabian.vo.User;

import java.util.List;

public class UserService {

    public static User add(User u) {
        UserDao userDao = new UserDaoImpl();
        int num = userDao.add(u);
        User user = null;
        if (num == 1) {
            user = UserService.login(u.getEmail(), u.getPwd(), true);

            ShopDao shopDao = new ShopDaoImpl();
            boolean boo = shopDao.newTable(user.getId());

            if (!boo) {
                UserService.del(user);
                return null;
            }
        }

        return user;

    }

    public static User login(String str, String pwd, boolean boo) {
        UserDao userDao = new UserDaoImpl();
        User u = userDao.findByStr(str, boo);

        if (pwd.equals(u.getPwd())) {
            u.setPwd("******");
            return u;
        } else {
            return null;
        }
    }

    public static boolean del(User user) {
        UserDao userDao = new UserDaoImpl();
        int num = userDao.del(user);
        return num == 1;
    }

    public static List<User> alluser() {
        UserDao userDao = new UserDaoImpl();

        return userDao.findAll();
    }

    public static List<Integer> root() {
        UserDao userDao = new UserDaoImpl();

        return userDao.root();
    }

    public static boolean upUser(User user) {
        UserDao userDao = new UserDaoImpl();
        int num = userDao.update(user);
        return num == 1;
    }

    public static User findById(int id) {
        UserDao userDao = new UserDaoImpl();
        return userDao.findById(id);
    }
}
