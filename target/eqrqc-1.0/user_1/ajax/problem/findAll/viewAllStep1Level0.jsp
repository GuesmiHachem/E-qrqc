<%-- 
    Document   : viewAllStep1Level0
    Created on : 6 oct. 2018, 06:11:06
    Author     : Hachem
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.*"%>
<%@page import="service.*"%>
<%@page import="entity.*"%>
<%@page import="domaine.*"%>

<%
    session = ServiceUser.refreshSessionUser(session);
    User userContent = (User) session.getAttribute("user");

    Problem problem = null;
    Step1 step1 = null;
    User user = null;
    TypeUser typeuser = null;
    TypeProblem typeProblem = null;
   // List<Problem> listProblemNivE = userContent.getProblemList();

    List<Problem> listProblem = new ArrayList<Problem>();
    /*List<Problem> listProblemNiv1 = new ArrayList<Problem>();
    List<Problem> listProblemfiltre = new ArrayList<Problem>();
    if (userContent.getIdLevel0() != null) {
        if (userContent.getIdLevel0().getIdLevel1() != null) {
            listProblemNiv1 = userContent.getIdLevel0().getIdLevel1().getProblemList();
        }
    }
     */
    Date actuelle = new Date();
    DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
    String dateToDay = dateFormat.format(actuelle);
    actuelle = new Date(dateToDay);
    String view = request.getParameter("view");
    String date = request.getParameter("date");
    String level = request.getParameter("level");

    if (!level.equals("")) {
        if (level.equals("l0")) {
            listProblem = ServiceProblem._filterProblem_level0(userContent);
        } else if (level.equals("l1")) {
            listProblem = ServiceProblem._filterProblem_level1(userContent);
        } 
    }

    if (!date.equals("")) {
        if (date.equals("today")) {
            listProblem = ServiceProblem._filterProblem_today(listProblem);
        } else if (date.equals("week")) {
            listProblem = ServiceProblem._filterProblem_week(listProblem);
        } else if (date.equals("month")) {
            listProblem = ServiceProblem._filterProblem_month(listProblem);
        } else if (date.equals("all")) {
            listProblem = ServiceProblem._filterProblem_today(listProblem);
        } else {
            listProblem = ServiceProblem._filterProblem_date(listProblem, date);
        }
    }

    // userContent=ServiceUser.refreshUser(userContent);
    // session.setAttribute("user",userContent);
%>
<%    if (view.equals("list")) {
%>
<div class="w3-panel">
    <div class="<%=Design.cadreTable%>">
        <table id="datatables1"  class="<%=Design.table%>" cellspacing="0" width="100%" >
            <thead >
                <tr class="w3-light-gray w3-text-dark-gray w3-small" >
                    <th> Code&nbsp;</th>
                    <th> Status&nbsp;</th>

                    <th> Utilisateur&nbsp;</th>
                    <th> Niveau_E&nbsp;</th>
                    <th> Niveau_1&nbsp;</th>

                    <th> Référence&nbsp;</th>
                    <th> Type_de_problem&nbsp;</th>
                    <th> Date_creation&nbsp;</th>

                    <th class="disabled-sorting" > </th>
                </tr>
            </thead>
            <tbody>
                <%

                    //Iterator<Problem> it = userContent.getIdLevel0().getIdLevel1().getProblemList().iterator();
                    //Iterator<Problem> it = userContent.getProblemList().iterator();
                    // Iterator<Problem> it = ServiceProblem.findAll().iterator();
                    // List<Problem> listProblemNiv1 = userContent.getIdLevel0().getIdLevel1().getProblemList();
                    //List<Problem> listProblem = userContent.getProblemList();
                    // List<Problem> listProblem =ServiceProblem.findAll();
                    for (Problem p : listProblemNiv1) {
                        //while (it.hasNext()) {
                        // problem = it.next();
                        typeProblem = p.getIdTypeProblem();
                        step1 = p.getIdStep1();
                        user = p.getIdUser();
                        if (step1 != null) {
                            if (user != null) {
                                typeuser = user.getIdTypeUser();
                            }

                %>
                <tr>


                    <td ><span class="w3-tag w3-padding w3-round"  style="background-color: <%=typeProblem.getColor()%>"><%=p.getCode()%></span></td>
                    <td><%=p.getStatus()%> </td>

                    <td><%=p.getIdUser().getFirstName() + " " + p.getIdUser().getName()%></td>
                    <td><%=p.getIdUser().getIdLevel0().getName()%> </td>
                    <td><%=p.getIdLevel1().getName()%> </td>



                    <td><%=p.getReference()%></td>
                    <td style="color: <%=typeProblem.getColor()%>" class=""><%=typeProblem.getName()%></td>
                    <td style=" white-space: nowrap;"><%=p.getDateCreation().toLocaleString()%></td>

                    <td>
                        <form style=" white-space: nowrap;" class="form-group-sm" action="<%=application.getContextPath()%>/ListProblem" method="post">
                            <a href="Problem?id=<%=p.getId()%>" class="<%=Design.btn%> w3-text-green ti-eye " ></a>

                            <input hidden name="id" type="text" value="<%= p.getId()%>">
                            <button name="removeProblem" type="submit" class="<%=Design.btn%> w3-text-pink fa fa-trash"></button>
                            <a href="ProblemPdf?id=<%=p.getId()%>" class="<%=Design.btn%> w3-text-red fa fa-file-pdf-o " ></a>
                        </form>

                    </td>


                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
</div>
<%
} else {
%>


<div class="w3-panel1">
    <div class="w3-row">
        <%
            for (Problem p : listProblemNiv1) {
                typeProblem = p.getIdTypeProblem();
                step1 = p.getIdStep1();
                user = p.getIdUser();
                if (step1 != null) {
                    if (user != null) {
                        typeuser = user.getIdTypeUser();
                    }

        %>
        <div class="w3-col l4 m6 s12" >
            <div class="w3-margin w3-border ">

                <div class="w3-row w3-padding-small w3-light-gray">
                    <div class="w3-col l12 w3-light-gray">
                        <img  style="height: 30px" class="img-fluid w3-image  w3-circle" src="<%=application.getContextPath()%>/img/profile/<%=p.getIdUser().getPicture()%>" alt="...">
                        <span class="w3-small w3-text-dark-gray"><a href="Problem?id=<%=p.getId()%>" class=""><%=p.getCode()%></a></span>
                        <span class="w3-right">
                            <i style="color: <%=p.getIdTypeProblem().getColor()%>;" class="ti-alert w3-large"></i>
                        </span>
                    </div>
                </div>
                <div class="w3-row w3-padding-small1" style="height: 100px">
                    <div class="w3-col l6">
                        <div  class="w3-panel1 w3-padding-small w3-round w3-border w3-border-green w3-margin">
                            <img  style="height: 50px;" class="img-fluid w3-round w3-image" src="<%=application.getContextPath()%>/upload/<%=step1.getBadPiece()%>" alt="...">
                        </div> 
                    </div>
                    <div class="w3-col l6">
                        <div class="w3-panel w3-padding-small w3-round w3-border w3-border-red w3-margin">
                            <img style="height: 50px" class="img-fluid w3-round w3-image " src="<%=application.getContextPath()%>/upload/<%=step1.getGoodPiece()%>" alt="...">
                        </div> 
                    </div>
                </div>
                <div class="w3-row w3-padding-small">
                    <div class="w3-col l12 w3-white">
                        <a href="Problem?id=<%=p.getId()%>" class="<%=Design.btn%> w3-text-dark-gray ti-eye " ></a>
                        <input hidden name="id" type="text" value="<%= p.getId()%>"/>
                        <button name="removeProblem" type="submit" class="<%=Design.btn%> w3-text-pink fa fa-trash"></button>
                        <a href="ProblemPdf?id=<%=p.getId()%>" class="<%=Design.btn%> w3-text-red fa fa-file-pdf-o " ></a>

                    </div>
                </div>

            </div>


        </div>
        <%
                }
            }
        %>
    </div>
</div>
<%
    }
%>