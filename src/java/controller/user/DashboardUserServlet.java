/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.implement.AccountDAO;
import dal.implement.OrderDAO;
import dal.implement.OrderDetailsDAO;
import entity.Account;
import entity.Order;
import entity.OrderDetails;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author mONESIUU
 */
public class DashboardUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        AccountDAO accountDAO = new AccountDAO();
        OrderDAO orederDAO = new OrderDAO();
        OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();

        List<Account> listAccount = accountDAO.findAlll();
        List<Order> listOrder = orederDAO.findAlll();
        List<OrderDetails> listOrderDetails = orderDetailsDAO.findAlll();

        HttpSession session = request.getSession();
        session.setAttribute("listAccount", listAccount);
        session.setAttribute("listOrder", listOrder);
        session.setAttribute("listOrderDetails", listOrderDetails);
        request.getRequestDispatcher("view/user/userDashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
