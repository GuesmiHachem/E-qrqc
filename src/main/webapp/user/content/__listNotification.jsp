<%@page import="entity.*"%>
<%@page import="service.*"%>
<%@page import="domaine.Design"%>
<%@page import="java.util.List"%>

<%
    User userContent = (User) session.getAttribute("user");
%>




<div class="content w3-light-gray">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="card w3-white w3-border-grey w3-border">
                    <div class="card-content">
                        <!--================================================-->
                        <br>
                        <!--================================================-->
                        <div class="row">
                            <div class="col-lg-12">

                                <!--====================================================================-->
                                <div class="<%=Design.containerTitle%>">
                                    <div class="col-xs-5">
                                        <h3 class="<%=Design.textNormal%>">List Notification</h3>
                                    </div>
                                    <div class=" w3-right">
                                        <form action="<%=application.getContextPath()%>/ListNotification" method="post">
                                            <button onclick="if (window.confirm('Voulez-vous vraiment supprimer ?')) {
                                                        return true;
                                                    } else {
                                                        return false;
                                                    }" style="border-radius: 5px;margin:3px;" name="removeAll" type="submit" class="<%=Design.btn%> w3-hover-white ti-trash"> 
                                            </button>
                                        </form>
                                    </div>

                                </div>
                                <div class="<%=Design.container%>">
                                    <br>
                                    <div class="<%=Design.cadreTable%>">
                                        <table id="datatables1" class="<%=Design.table%>" cellspacing="0" width="100%" style="width:100%">
                                            <thead>
                                                <tr class="w3-light-gray w3-text-dark-gray w3-small" >
                                                    <th>#</th>
                                                    <th>Utilisateur&nbsp;&nbsp;</th>
                                                    <th>Photo&nbsp;&nbsp;</th>
                                                    <th>Piece_Mauvaise&nbsp;&nbsp;</th>
                                                    <th>Piece_Bonne&nbsp;&nbsp; &nbsp;</th>
                                                    <th>Probleme&nbsp;&nbsp;&nbsp;</th>
                                                    <th>Type_de_probleme&nbsp;&nbsp;&nbsp;</th>
                                                    <th>Date&nbsp;&nbsp;</th>
                                                    <td class="disabled-sorting" >&nbsp;&nbsp;</td>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    List<Notification> listNotification = userContent.getNotificationList();
                                                    for (Notification notification : listNotification) {

                                                        User u = notification.getIdUser();
                                                        Problem problem = notification.getIdProblem();
                                                        Step1 step1 = problem.getIdStep1();
                                                        TypeProblem typeProblem = problem.getIdTypeProblem();
                                                        User userProblem = problem.getIdUser();
                                                %>
                                                <tr>

                                                    <td><%=notification.getId()%></td>
                                                    <td><%=userProblem.getFirstName() + " " + userProblem.getName()%></td>
                                                    <td>
                                                        <img class="w3-border w3-border-dark-gray w3-round" width="60px" height="60px" src="<%=application.getContextPath()%>/img/profile/<%=userProblem.getPicture()%>" alt="...">

                                                    </td>
                                                    <td>
                                                        <img class="w3-border w3-border-dark-gray w3-round" width="60px" height="60px" src="<%=application.getContextPath()%>/upload/<%=step1.getBadPiece()%>" alt="...">

                                                    </td>
                                                    <td>
                                                        <img class="w3-border w3-border-dark-gray w3-round" width="60px" height="60px" src="<%=application.getContextPath()%>/upload/<%=step1.getGoodPiece()%>" alt="...">

                                                    </td>
                                                    <td><%=problem.getCode()%></td>
                                                    <td><%=typeProblem.getName()%></td>

                                                    <td><%=notification.getDateCreation()%></td>
                                                    <td>

                                                        <a href="<%=application.getContextPath()%>/Notification?id=<%=notification.getId()%>" class="w3-btn w3-light-grey w3-border w3-border-grey w3-round w3-hover-text-blue fa fa-eye"> 
                                                        </a>


                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <br>

                    </div>
                </div><!--  end card  -->
            </div> <!-- end col-md-12 -->
        </div> <!-- end row -->
    </div>
</div>
