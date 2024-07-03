/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.homepage;

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
import entity.PageControl;
import entity.Products;
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
public class HomeController extends HttpServlet {

    ProductsDAO productsDAO = new ProductsDAO();
    CategoryDAO categoryDAO = new CategoryDAO();
    BranDAO brandDAO = new BranDAO();
    AccountDAO accountDAO = new AccountDAO();
    OrderDAO orederDAO = new OrderDAO();
    OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Products> listProductsStag = productsDAO.findByQuantity();
        PageControl pageControl = new PageControl();
        List<Products> listProducts = findProductDoGet(request, pageControl);
        List<Category> listCategory = categoryDAO.findAll();
        List<Brand> listBrand = brandDAO.findAll();
        List<Account> listAccount = accountDAO.findAlll();
        List<Order> listOrder = orederDAO.findAlll();
        List<OrderDetails> listOrderDetails = orderDetailsDAO.findAlll();
        

        HttpSession session = request.getSession();
        session.setAttribute("listAccount", listAccount);
        session.setAttribute("listOrder", listOrder);
        session.setAttribute("listOrderDetails", listOrderDetails);
        session.setAttribute("listBrand", listBrand);
        session.setAttribute("listProducts", listProducts);
        session.setAttribute("listProductsStag", listProductsStag);
        session.setAttribute("listCategory", listCategory);
        session.setAttribute("listBrand", listBrand);
        session.setAttribute("pageControl", pageControl);
        request.getRequestDispatcher("view/homepage/home.jsp").forward(request, response);

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
        response.sendRedirect("home");
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

    private List<Products> findProductDoGet(HttpServletRequest request, PageControl pagecontrol) {
        String pageRaw = request.getParameter("page");
        //valid
        int page;
        try {
            page = Integer.parseInt(pageRaw);
            if (page <= 0) {
                page = 1;
            }
        } catch (NumberFormatException e) {
            page = 1;
        }
        String actionSearch = request.getParameter("search") == null
                ? "default"
                : request.getParameter("search");
        List<Products> listProducts;
        String requestURL = request.getRequestURL().toString();
        int totalRecord = 0;
        switch (actionSearch) {
            case "category":
                String categoryId = request.getParameter("categoryId");
                totalRecord = productsDAO.findTotalRecordByCategory(categoryId);
                listProducts = productsDAO.findByCategory(categoryId, page);
                pagecontrol.setUrlPattern(requestURL + "?search=category&categoryId=" + categoryId + "&");
                break;
            case "brand":
                String brandId = request.getParameter("brandId");
                totalRecord = productsDAO.findTotalRecordByBrand(brandId);
                listProducts = productsDAO.findByBrand(brandId, page);
                pagecontrol.setUrlPattern(requestURL + "?search=brand&brandId=" + brandId + "&");
                break;
            case "searchByName":
                String keyword = request.getParameter("keyword");
//                totalRecord = productDAO.findTotalRecordByName(keyword);
                totalRecord = productsDAO.findTotalRecordByName(keyword);
                listProducts = productsDAO.findByName(keyword, page);
//                pagecontrol.setUrlPattern(requestURL + "?search=searchByName&keyword=" + keyword + "&");
                pagecontrol.setUrlPattern(requestURL + "?search=searchByName&keyword=" + keyword + "&");
                break;
            case "searchByRange":
                String minPrice = request.getParameter("minPrice");
                String maxPrice = request.getParameter("maxPrice");
                totalRecord = productsDAO.findTotalRecordByPriceRange(minPrice, maxPrice);
                listProducts = productsDAO.findByPriceRange(minPrice, maxPrice, page);
                pagecontrol.setUrlPattern(requestURL + "?search=searchByRange&minPrice=" + minPrice + "&maxPrice=" + maxPrice + "&");
                break;
          
            default:
                listProducts = productsDAO.findAll();
                pagecontrol.setUrlPattern(requestURL + "?");
        }

        int totalPage = (totalRecord % commonConstant.RECORD_PER_PAGE) == 0
                ? (totalRecord / commonConstant.RECORD_PER_PAGE)
                : (totalRecord / commonConstant.RECORD_PER_PAGE) + 1;

        pagecontrol.setPage(page);
        pagecontrol.setTotalPage(totalPage);
        pagecontrol.setTotalRecord(totalRecord);

        return listProducts;

    }

    

}
