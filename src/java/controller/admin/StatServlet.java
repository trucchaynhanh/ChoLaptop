/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import constant.commonConstant;
import dal.implement.AccountDAO;
import dal.implement.BranDAO;
import dal.implement.CategoryDAO;
import dal.implement.OrderDAO;
import dal.implement.OrderDetailsDAO;
import dal.implement.ProductsDAO;
import entity.Account;
import entity.Brand;
import entity.Category;
import entity.Order;
import entity.OrderDetails;
import entity.Products;
import java.io.IOException;
import java.io.PrintWriter;
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
public class StatServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    ProductsDAO dao = new ProductsDAO();
    OrderDAO orderDAO = new OrderDAO();
    OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
    AccountDAO accountDAO = new AccountDAO();
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Products> listProducts = dao.findAll();
        List<Order> listOrder = orderDAO.findAlll();
        List<OrderDetails> listOrderDetails = orderDetailsDAO.findAlll();
        List<Account> listAccount = accountDAO.findAlll();
        //get list category
        session.setAttribute(commonConstant.SESSION_PRODUCT, listProducts);
        session.setAttribute("listOrder", listOrder);
        session.setAttribute("listOrderDetails", listOrderDetails);
        session.setAttribute("listAccount", listAccount);
        

        //chuyen sang trang dashboard
        request.getRequestDispatcher("../view/admin/stat.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
