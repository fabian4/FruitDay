package com.me.fabian.service;

import com.me.fabian.dao.ShopDao;
import com.me.fabian.dao.impl.ShopDaoImpl;
import com.me.fabian.vo.Cart;
import com.me.fabian.vo.Fruit;

import java.util.ArrayList;
import java.util.List;

public class ShopService {

    public static boolean del(int id, int fid) {
        ShopDao shopDao = new ShopDaoImpl();
        int num = shopDao.del(id, fid);
        return num == 1;
    }

    public static List<Cart> showAll(int id) {
        ShopDao shopDao = new ShopDaoImpl();

        return shopDao.show(id);
    }

    public static List<Fruit> show(int id, boolean boo) {
        ;
        List<Cart> carts = ShopService.showAll(id);

        List<Fruit> fruits = new ArrayList<Fruit>();

        if (boo) {
            for (Cart cart : carts) {
                if (cart.isCart()) {
                    Fruit fruit = FruitService.info(cart.getFid());
                    fruits.add(fruit);
                }
            }
        } else {
            for (Cart cart : carts) {
                if (cart.isStar()) {
                    Fruit fruit = FruitService.info(cart.getFid());
                    fruits.add(fruit);
                }
            }
        }

        return fruits;
    }

    public static void add(int id, Cart cart) {
        ShopDao shopDao = new ShopDaoImpl();
        int num = shopDao.add(id, cart);
        System.out.println("num:" + num);
    }

    public static Cart find(int id, int fid) {
        ShopDao shopDao = new ShopDaoImpl();
        return shopDao.find(id, fid);
    }

    public static boolean up(int id, Cart cart) {
        ShopDao shopDao = new ShopDaoImpl();
        int num = shopDao.up(id, cart);
        return num == 1;

    }
}
