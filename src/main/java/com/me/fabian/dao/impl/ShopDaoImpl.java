package com.me.fabian.dao.impl;

import com.me.fabian.dao.ShopDao;
import com.me.fabian.db.DBUtils;
import com.me.fabian.vo.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShopDaoImpl implements ShopDao {


    public boolean newTable(int id) {
        Connection conn = null;
        PreparedStatement ps = null;
        String newtable = "shop" + id;
        String sql = "CREATE TABLE " + newtable + "" +
                "(\n" +
                "    fid INT NOT NULL,\n" +
                "    isStar BOOLEAN NOT NULL,\n" +
                "    isCart BOOLEAN NOT NULL\n" +
                ");";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(null, ps, conn);
        }
        return false;
    }


    public int del(int id, int fid) {
        Connection conn = null;
        PreparedStatement ps = null;
        int num = 0;
        String sql = "DELETE FROM fruit.`shop" + id + "`" + "WHERE fid=" + fid + "";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            num = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(null, ps, conn);
        }
        return num;
    }

    public List<Cart> show(int id) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Cart> carts = new ArrayList<Cart>();
        String sql = "SELECT * FROM fruit.`shop" + id + "`";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cart cart = new Cart();
                cart.setFid(rs.getInt("fid"));
                cart.setIsCart(rs.getBoolean("isCart"));
                cart.setIsStar(rs.getBoolean("isStar"));
                carts.add(cart);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(rs, ps, conn);
        }
        return carts;
    }

    public Cart find(int id, int fid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Cart cart = new Cart();
        String sql = "SELECT * FROM fruit.`shop" + id + "` WHERE fid=" + fid + "";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                cart.setFid(fid);
                cart.setIsCart(rs.getBoolean("isCart"));
                cart.setIsStar(rs.getBoolean("isStar"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(rs, ps, conn);
        }
        return cart;
    }

    public int up(int id, Cart cart) {
        Connection conn = null;
        PreparedStatement ps = null;
        int num = 0;
        String sql = "UPDATE shop" + id + " SET isCart=?,isStar=?  WHERE fid=?;";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setBoolean(1, cart.isCart());
            ps.setBoolean(2, cart.isStar());
            ps.setInt(3, cart.getFid());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(null, ps, conn);
        }
        return num;
    }

    public int add(int id, Cart cart) {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "insert into  fruit.`shop" + id + "` (fid,isCart,isStar)values(?,?,?)";
        int num = 0;
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, cart.getFid());
            ps.setBoolean(2, cart.isCart());
            ps.setBoolean(3, cart.isStar());
            num = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(null, ps, conn);
        }
        return num;
    }
}
