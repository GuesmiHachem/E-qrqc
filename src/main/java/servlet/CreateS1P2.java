/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import entity.*;
import service.ServiceNotification;
import service.ServiceProblem;
import service.ServiceStep1;
import service.ServiceStep1ActionFollowed;
import service.ServiceStep1SecurityPlan;
import service.ServiceUser;

/**
 *
 * @author Hachem
 */
public class CreateS1P2 extends HttpServlet {

    public HttpSession session = null;
    public ServletContext application = null;
    public String S1P1Form = "/user/page/S1P1Form.jsp";
    public String S1P2Form = "/user/page/S1P2Form.jsp";
    public String S1P3Form = "/user/page/S1P3Form.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession();
        application = request.getServletContext();
        //--------------------------------------------------------
/*
        model.Problem problem = (model.Problem) session.getAttribute("problem");
        if (problem == null) {
            problem = new DaoProblem().generateProblem();
            session.setAttribute("problem", problem);

        }
        application.getRequestDispatcher("/user/page/listUser.jsp").forward(request, response);*/

        //doPost(request, response);
        application.getRequestDispatcher(S1P2Form).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        session = request.getSession();
        application = request.getServletContext();

        entity.Problem problem = (entity.Problem) session.getAttribute("problem");

        //--------------------------------------------------------
        String S1P2 = request.getParameter("S1P2");
        String AddPlan = request.getParameter("AddPlan");
        String removePlan = request.getParameter("removePlan");
        String hashcode = request.getParameter("hashcode");
        Step1 step1 = (Step1) session.getAttribute("step1");
        entity.User user=(entity.User)session.getAttribute("user");
        user=ServiceUser.find(user.getId());
        List<Step1SecurityPlan> listStep1SecurityPlan = (List<Step1SecurityPlan>) session.getAttribute("listSecurityPlan");

        if (listStep1SecurityPlan == null) {
            listStep1SecurityPlan = new ArrayList<Step1SecurityPlan>();
            session.setAttribute("listSecurityPlan", listStep1SecurityPlan);
        }
        if (step1 == null) {
            //step1 = new Step1();
        }
        //--------------------------------------------------------
        if (S1P2 != null) {

            String immediate_actions = request.getParameter("immediate_actions");
            String sort_string = request.getParameter("sort");
            String sort_criterion = request.getParameter("sort_criterion");
            String start_validation_string = request.getParameter("start_validation");
           
            
            
        

            boolean sort;
            if (sort_string != null) {
                sort = true;
            } else {
                sort = false;
            }

            boolean start_validation;
            if (start_validation_string != null) {
                start_validation = true;
            } else {
                start_validation = false;
            }
            
            step1.setImmediateActions(immediate_actions);
            step1.setSort(sort);
            step1.setSortCriterion(sort_criterion);
            step1.setStartValidation(start_validation);
            if(start_validation){
              step1.setUserValidation(user);
            }
            ServiceStep1.edit(step1);
            step1 = ServiceStep1.find(step1.getId());
            //session.setAttribute("step1", step1);
            for (Step1SecurityPlan step1SecurityPlan : listStep1SecurityPlan) {
                step1SecurityPlan.setIdStep1(step1);
                ServiceStep1SecurityPlan.create(step1SecurityPlan);
            }
            ServiceStep1ActionFollowed.doStep1ActionFollowed(step1,user.getIdLevel0());
            //ServiceStep1.edit(step1);
            //step1 = ServiceStep1.find(step1.getId());
            //problem.setIdStep1(step1);
            // ServiceProblem.edit(problem);
            //step1 = null;
            //immediate_actions = null;
            //  sort1 = null;
            //sort_criterion = null;

            //ServiceNotification.doNotification(problem.getId());
            session.removeAttribute("problem");
            session.removeAttribute("step1");
            session.removeAttribute("listSecurityPlan");
            // session.removeAttribute("listWhoCanBeAlerted");
            // session.removeAttribute("listWhoShouldBeAlerted");
            //session.removeAttribute("listStep1part3");
            
            
            
            ServiceNotification.doNotification( problem);
            
            
            response.sendRedirect(application.getContextPath() + "/Problem?id=" + problem.getId());
            //response.getWriter().print(step1+ "--");

        } else if (AddPlan != null) {

            String where = request.getParameter("where");
            String who = request.getParameter("who");
            String n1 = request.getParameter("n1");
            String n2 = request.getParameter("n2");

            Step1SecurityPlan sp = new Step1SecurityPlan();

            sp.setWhere(where);
            sp.setWho(who);
            sp.setHowMuch(Integer.parseInt(n1));
            sp.setResult(Integer.parseInt(n2));

            listStep1SecurityPlan.add(sp);

            session.setAttribute("listSecurityPlan", listStep1SecurityPlan);
            response.sendRedirect(application.getContextPath() + "/CreateS1P2");

        } else if (removePlan != null) {

            Step1SecurityPlan step1SecurityPlan = null;

            for (int i = 0; i < listStep1SecurityPlan.size(); i++) {
                step1SecurityPlan = listStep1SecurityPlan.get(i);
                if ((step1SecurityPlan.hashCode() + "").equals(hashcode)) {
                    listStep1SecurityPlan.remove(step1SecurityPlan);
                }
            }

            session.setAttribute("listSecurityPlan", listStep1SecurityPlan);
            response.sendRedirect(application.getContextPath() + "/CreateS1P2");

        } else {
            //application.getRequestDispatcher(S1P2Form).forward(request, response);
            application.getRequestDispatcher("/user/page/home.jsp").forward(request, response);

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
