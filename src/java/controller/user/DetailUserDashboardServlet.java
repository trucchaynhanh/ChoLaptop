/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.implement.AccountDAO;
import dal.implement.OrderDAO;
import dal.implement.OrderDetailsDAO;
import dal.implement.ProductsDAO;
import entity.Account;
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
public class DetailUserDashboardServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
        ProductsDAO productDAO = new ProductsDAO();
        
        List<Products> listProduct = productDAO.findAll();
        HttpSession session = request.getSession();
        int orderId = Integer.parseInt(request.getParameter("id"));
        OrderDetails odetail = OrderDetails.builder()
                .orderId(orderId)
                .build();
        //lay product tu database
        List<OrderDetails> odetailList = orderDetailsDAO.findById(odetail);
        //set product vao request va chuyen sang trang product-details.jsp
        session.setAttribute("odetailList", odetailList);
        session.setAttribute("listProduct", listProduct);

        request.getRequestDispatcher("view/user/UserDetailDashboard.jsp").forward(request, response);

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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
