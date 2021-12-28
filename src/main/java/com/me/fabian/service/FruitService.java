package com.me.fabian.service;

import com.me.fabian.dao.FruitDao;
import com.me.fabian.dao.impl.FruitDaoImpl;
import com.me.fabian.vo.Fruit;

import java.util.ArrayList;
import java.util.List;

public class FruitService {

    public static Fruit info(int fid) {
        FruitDao fruitDao = new FruitDaoImpl();
        Fruit fruit = fruitDao.findByFid(fid);

        if (fruit == null) {
            fruit = new Fruit(1, "商品不存在", "", 0, "", "", 0);
        }

        return fruit;
    }

    public static List<Fruit> hot() {
        FruitDao fruitDao = new FruitDaoImpl();
        return fruitDao.findHot();
    }

    public static List<Fruit> all() {

        FruitDao fruitDao = new FruitDaoImpl();
        return fruitDao.findall();
    }

    public static List<Fruit> ser(String ser) {
        FruitDao fruitDao = new FruitDaoImpl();
        List<Fruit> fruits = fruitDao.findall();

        List<Fruit> serfruits = new ArrayList<Fruit>();

        for (Fruit fruit : fruits) {
            if (ser.contains(fruit.getFname())) {
                serfruits.add(fruit);
            } else if (fruit.getFname().contains(ser)) {
                serfruits.add(fruit);
            }
        }

        return serfruits;

    }

    public static boolean add(Fruit fruit) {
        FruitDao fruitDao = new FruitDaoImpl();
        int num = fruitDao.add(fruit);
        return num == 1;
    }

    public static boolean del(int fid) {
        FruitDao fruitDao = new FruitDaoImpl();
        int num = fruitDao.del(fid);
        return num == 1;
    }

    public static boolean up(Fruit fruit) {
        FruitDao fruitDao = new FruitDaoImpl();
        int num = fruitDao.up(fruit);
        return num == 1;
    }
}
