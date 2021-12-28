package com.me.fabian.servlet;

import com.me.fabian.service.UserService;
import com.me.fabian.vo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class UserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String key = req.getParameter("key");

        if ("add".equals(key)) {
            doAdd(req, resp);
        }
        if ("login".equals(key)) {
            doLogin(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }


    protected void doAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String pwd = req.getParameter("pwd1");

        User u = new User(email, phone, pwd);

        User user = UserService.add(u);

        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            req.getRequestDispatcher(req.getContextPath() + "/index.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/reg.jsp").forward(req, resp);
        }
    }

    protected void doLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String str = req.getParameter("str");
        String pwd = req.getParameter("pwd");
        boolean boo;
        if (str.contains("@")) {
            boo = true;
        } else {
            boo = false;
        }

        User u = UserService.login(str, pwd, boo);

        List<Integer> uids = UserService.root();

        for (int i : uids) {
            if (u.getId() == i) {
                req.getRequestDispatcher("BSindex.jsp").forward(req, resp);
            }
        }
        if (u != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", u);
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }

}
