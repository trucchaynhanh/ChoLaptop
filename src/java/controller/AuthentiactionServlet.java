/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import constant.commonConstant;
import dal.implement.AccountDAO;
import entity.Account;
import entity.Products;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;

/**
 *
 * @author mONESIUU
 */
public class AuthentiactionServlet extends HttpServlet {

    AccountDAO accountDAO = new AccountDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";
        //dua theo action set URL trang can chuyen den
        String url;
        switch (action) {
            case "login":
                url = "view/authen/login.jsp";
                break;
            case "log-out":
                url = logOut(request, response);
                break;
            case "sign-up":
                url = "view/authen/register.jsp";
                break;
            case "edit-infor":
                url = "view/user/editUserInfor.jsp";
                break;
            default:
                url = "home";
        }

        //chuyen trang
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";
        //dựa theo action để xử lí request
        String url;
        switch (action) {
            case "login":
                url = loginDoPost(request, response);
                break;
            case "sign-up":
                url = signUp(request, response);
                break;
            case "edit-infor":
                url = edit(request, response);
                break;
            default:
                url = "home";
        }
        request.getRequestDispatcher(url).forward(request, response);

    }

    private String loginDoPost(HttpServletRequest request, HttpServletResponse response) {
        String url = null;
        //get về các thong tin người dufg nhập
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //kiểm tra thông tin có tồn tại trong DB ko
        Account account = Account.builder()
                .username(username)
                .password(password)
                .build();
        Account accFoundByUsernamePass = accountDAO.findByUsernameAndPass(account);
        //true => trang home ( set account vao trong session ) 
        if (accFoundByUsernamePass != null) {
            request.getSession().setAttribute(commonConstant.SESSION_ACCOUNT,
                    accFoundByUsernamePass);
            url = "home";
            //false => quay tro lai trang login ( set them thong bao loi )
        } else {
            request.setAttribute("error", "Username or password incorrect!!");
            url = "view/authen/login.jsp";
        }
        return url;
    }

    private String logOut(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().removeAttribute(commonConstant.SESSION_ACCOUNT);
        return "home";
    }

    private String signUp(HttpServletRequest request, HttpServletResponse response) {
        String url;
        //get ve cac thong tin nguoi dung nhpa
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        //kiem tra xem username da ton tai trong db
        Account account = Account.builder()
                .username(username)
                .password(password)
                .email(email)
                .address(address)
                .build();
        boolean isExistUsername = accountDAO.checkUsernameExist(account);
        //true => quay tro lai trang register (set thong bao loi )
        if (isExistUsername) {
            request.setAttribute("error", "Username exist !!");
            url = "view/authen/register.jsp";
            //false => quay tro lai trang home ( ghi tai khoan vao trong DB )
        } else {
            accountDAO.insert(account);
            url = "home";
        }
        return url;
    }

    private String edit(HttpServletRequest request, HttpServletResponse response) {
            int id = Integer.parseInt(request.getParameter("id"));
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String address = request.getParameter("address");

            Account accountU = Account.builder()
                    .id(id)
                    .username(username)
                    .password(password)
                    .email(email)
                    .address(address)
                    .build();
            accountDAO.update(accountU);
        String url;

        // Nếu cập nhật không thành công, xử lý thông báo lỗi hoặc chuyển hướng về trang cũ
        // Ví dụ:
        url = "home";
        return url;
    }

}
