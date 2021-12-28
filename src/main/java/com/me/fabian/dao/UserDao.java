package com.me.fabian.dao;

import com.me.fabian.vo.User;

import java.util.List;

public interface UserDao {

    /**
     * 添加用户
     */
    int add(User u);

    /**
     * 用户按邮箱或手机号登陆
     */
    User findByStr(String str, boolean boo);

    /**
     * 查看所有人信息
     */
    List<User> findAll();

    /**
     * 删除
     */
    int del(User u);

    /**
     * 修改信息
     */
    int update(User u);

    /**
     * 修改密码
     */
    int upPwd(User u);

    /**
     * 查看个人信息
     */
    User findById(int id);

    /**
     * 获取管理员uid
     */
    List<Integer> root();

}
