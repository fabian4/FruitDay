package com.me.fabian.dao;

import com.me.fabian.vo.Fruit;

import java.util.List;

public interface FruitDao {

    /**
     * 按商品编号查找
     */
    Fruit findByFid(int fid);

    /**
     * 热卖商品
     */
    List<Fruit> findHot();

    /**
     * 全部商品
     */
    List<Fruit> findall();

    /**
     * 添加商品
     */
    int add(Fruit fruit);

    /**
     * 删除商品
     */
    int del(int fid);

    /**
     * 更新商品
     */
    int up(Fruit fruit);
}
