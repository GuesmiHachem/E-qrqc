/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;


import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import entity.User;
import java.util.Enumeration;
import java.util.ResourceBundle;
import service.ServiceUser;

/**
 *
 * @author Hachem
 */
public class Connexion extends HttpServlet {

    public HttpSession session = null;
    public ServletContext application = null;
    public String pageweb = "/index.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession();
        application = request.getServletContext();

        application.getRequestDispatcher(pageweb).forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        session = request.getSession();
        application = request.getServletContext();

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        User user = ServiceUser.exist(login, password);
        if (user != null) {
            session.setAttribute("user", user);
            response.sendRedirect(application.getContextPath() + "/Home");
        } else {
            response.sendRedirect(application.getContextPath() + "/Connexion");

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
