package com.me.fabian.dao;

import com.me.fabian.vo.Cart;

import java.util.List;

public interface ShopDao {

    /**
     * 创建用户的购物车表
     */
    boolean newTable(int id);

    /**
     * 删除
     */
    int del(int id, int fid);

    /**
     * 显示购物车列表
     */
    List<Cart> show(int id);

    /**
     * 加入购物车
     */
    int add(int id, Cart cart);

    /**
     * 查找
     */
    Cart find(int id,int fid);

    /**
     * 修改
     */
    int up(int id,Cart cart);
}
