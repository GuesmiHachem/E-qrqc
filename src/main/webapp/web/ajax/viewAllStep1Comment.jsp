<%-- 
    Document   : problem_comment
    Created on : 28 sept. 2018, 13:48:23
    Author     : Hachem
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.*"%>
<%@page import="service.*"%>


<%@page import="domaine.Design"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    //List<Step1> listStep1 = new ArrayList<Step1>();
    User userContent_ajax = (User) session.getAttribute("user");
    String id_problem_ajax = request.getParameter("id");
    Problem problem_ajax = ServiceProblem.find(Integer.parseInt(id_problem_ajax));

    Step1 step1_ajax = problem_ajax.getIdStep1();

    List<Step1Comment> listStep1Comment_ajax = step1_ajax.getStep1CommentList();


%>
<div class="<%=Design.containerTitle%>">
    <h2 class="<%=Design.textNormal%> ti-comment"> <%=step1_ajax.getStep1CommentList().size()%> Commentaires</h2>
</div>

<br>

<%        for (int i = listStep1Comment_ajax.size() - 1; i >= 0; i--) {
        Step1Comment step1Comment_ajax = listStep1Comment_ajax.get(i);
        User userComment_ajax = step1Comment_ajax.getIdUser();
        String comment_ajax = step1Comment_ajax.getComment();
%>

<%if (userComment_ajax.getIdTypeUser() != null) {%>
<% if (userComment_ajax.getIdLevel0() != null) {%>

<%if (userComment_ajax.equals(userContent_ajax)) {%>


<div class="w3-container w3-round w3-white w3-padding w3-border">
    <div class="row">
        <div class="col-lg-1 ">
            <%if (userComment_ajax.getPicture().equals("")) {%>
            <img width="50px" height="50px"  class="photo w3-image w3-circle w3-margin" src="<%=application.getContextPath()%>/img/profile/user.png" alt="...">
            <%} else {%> 
            <img width="50px" height="50px" class="photo w3-image w3-circle w3-margin" src="<%=application.getContextPath()%>/img/profile/<%=userComment_ajax.getPicture()%>" alt="...">
            <%}%> 
        </div>
        <div class="col-lg-11" >
            <div class="row">
                <div class="col-lg-12">
                    <div class="w3-left w3-margin">
                        <span class="w3-medium  w3-text-dark-gray">
                            <%=userComment_ajax.getFirstName() + " " + userComment_ajax.getName()%>
                        </span>
                        <p class="w3-small  w3-text-green">
                            <%=userComment_ajax.getIdTypeUser().getName()%>
                        </p> 
                    </div>
                    <div class="w3-right w3-margin">
                        <small class="w3-small w3-text-dark-gray">
                            <%=step1Comment_ajax.getDateCreation().toLocaleString().substring(0, 13)%>
                        </small>
                        <small class="w3-small w3-text-gray">
                            <%=step1Comment_ajax.getDateCreation().toLocaleString().substring(13)%>
                        </small>

                    </div>

                </div>

            </div>
            <div class="row">
                <div class="col-lg-8">
                    <p class="">
                        <%=comment_ajax%>
                    </p>
                </div>
                <div class="col-lg-4  w3-right ">
                    <div class="form-group w3-right">
                        <button type="button" class="w3-btn w3-hover-green w3-text-green w3-round" data-toggle="modal" data-target="#comment<%=step1Comment_ajax.getId()%>" >Modifier</button>
                        <button  type="button" class="w3-btn w3-hover-pink w3-text-pink w3-round" name="deleteComment" onclick="_deleteStep1Comment(<%=step1Comment_ajax.getId()%>)">
                            Supprimer
                        </button>
                    </div>
                </div>
            </div> 
        </div>
    </div>
</div>


<%} else {%>

<div class="w3-container w3-round w3-light-grey w3-padding w3-border">
    <div class="row">
        <div class="col-lg-1 ">
            <%if (userComment_ajax.getPicture().equals("")) {%>
            <img width="50px" height="50px"  class="photo w3-image w3-circle w3-margin" src="<%=application.getContextPath()%>/img/profile/user.png" alt="...">
            <%} else {%> 
            <img width="50px" height="50px" class="photo w3-image w3-circle w3-margin" src="<%=application.getContextPath()%>/img/profile/<%=userComment_ajax.getPicture()%>" alt="...">
            <%}%> 
        </div>
        <div class="col-lg-11" >
            <div class="row">
                <div class="col-lg-12">
                    <div class="w3-left w3-margin">
                        <span class="w3-medium  w3-text-dark-gray">
                            <%=userComment_ajax.getFirstName() + " " + userComment_ajax.getName()%>
                        </span>
                        <p class="w3-small  w3-text-green">
                            <%=userComment_ajax.getIdTypeUser().getName()%>
                        </p> 
                    </div>
                    <div class="w3-right w3-margin">

                        <small class="w3-small w3-text-dark-gray">
                            <%=step1Comment_ajax.getDateCreation().toLocaleString().substring(0, 13)%>
                        </small>
                        <small class="w3-small w3-text-gray">
                            <%=step1Comment_ajax.getDateCreation().toLocaleString().substring(13)%>
                        </small>
                    </div>
                    <div class="w3-right w3-margin">
                        <%
                            String name_level0 = userComment_ajax.getIdLevel0().getName();
                            String name_level1 = userComment_ajax.getIdLevel0().getIdLevel1().getName();
                            String name_level2 = userComment_ajax.getIdLevel0().getIdLevel1().getIdLevel2().getName();
                            String name_level3 = userComment_ajax.getIdLevel0().getIdLevel1().getIdLevel2().getIdLevel3().getName();

                        %>
                        <p class="w3-badge w3-tag w3-round w3-green w3-border w3-padding-small">
                            <%=name_level0 + " "%>
                        </p>
                        <i class="fa fa-chevron-right"></i>
                        <p class="w3-badge w3-tag w3-round w3-white w3-border w3-padding-small">
                            <%=name_level1 + " "%>
                        </p>
                        <i class="fa fa-chevron-right"></i>
                        <p class="w3-badge w3-tag w3-round w3-white w3-border w3-padding-small">
                            <%=name_level2 + " "%>
                        </p>
                        <i class="fa fa-chevron-right"></i>
                        <p class="w3-badge w3-tag w3-round w3-white w3-border w3-padding-small">
                            <%=name_level3 + " "%>
                        </p>


                    </div>

                </div>

            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p>
                        <%=comment_ajax%>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<%}%>


<%}%>
<%}%>

<br>
<%
    }
%>

