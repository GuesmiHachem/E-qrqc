
<%@page import="entity.*"%>
<%@page import="service.*"%>

<%@page import="servlet.PlanAction"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="domaine.Design"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>
<%@page import="java.util.ResourceBundle"%>

<%

    ResourceBundle bundle = (ResourceBundle) session.getAttribute("bundle");

%>



<div class="content w3-light-gray">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">




                <div class="card w3-white w3-border-grey w3-border">
                    <div class="card-content ">  

                        <!--==================================-->
                        <div class="row">
                            <div class="col-lg-12 ">

                                <div class="<%=Design.containerTitle%>">
                                    <h3 class="<%=Design.textTitle%>">Plan d'Action</h3>
                                </div>
                                <div class="<%=Design.container%>">
                                    <br>
                                    <div class="<%=Design.cadreTable%>">
                                        <table id="datatables"  class="<%=Design.table%>" cellspacing="0" width="100%" >
                                            <thead >
                                                <tr class="w3-light-gray w3-text-dark-gray w3-small" >
                                                    <th style=" white-space: nowrap;"> Code_Problem</th>
                                                    <th style=" white-space: nowrap;"> Status</th>

                                                    <th class="w3-dark-gray" style=" white-space: nowrap;"> Action</th>
                                                    <th class="w3-dark-gray" style=" white-space: nowrap;"> Quand</th>
                                                    <th class="w3-dark-gray" style=" white-space: nowrap;"> Qui</th>
                                                    <th class="w3-dark-gray" style=" white-space: nowrap;"> Commentaire</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    Problem problem = null;
                                                    Step1 step1 = null;
                                                    User user = null;
                                                    TypeUser typeuser = null;
                                                    TypeProblem typeProblem = null;
                                                    Iterator<Step1> itStep1 = ServiceStep1.findAll().iterator();

                                                    String color1 = "w3-light-gray";
                                                    String color2 = "w3-white";
                                                    String color = color1;
                                                    while (itStep1.hasNext()) {

                                                        step1 = itStep1.next();
                                                        problem = step1.getIdProblem();
                                                        user = problem.getIdUser();
                                                        typeProblem=problem.getIdTypeProblem();
                                                        Iterator<Step1Action> itPlanAction = step1.getStep1ActionList().iterator();

                                                        if (itPlanAction.hasNext()) {

                                                            if (color.equals(color1)) {
                                                                color = color2;
                                                            } else {
                                                                color = color1;
                                                            }

                                                            while (itPlanAction.hasNext()) {

                                                                Step1Action step1Action = itPlanAction.next();

                                                %>
                                                <tr class="<%=color%>">


                                                    <td ><a href="Problem?id=<%=problem.getId()%>" ><span class="w3-tag w3-padding w3-round"  style="background-color: <%=typeProblem.getColor()%>"><%=problem.getCode()%></span></a></td>
                                                    <td><%=problem.getStatus()%> </td>

                                                    <td ><%= step1Action.getAction()%> </td>
                                                    <td ><%= step1Action.getWhen()%></td>
                                                    <td ><%= step1Action.getWho()%> </td>
                                                    <td ><%= step1Action.getComment()%> </td>

                                                    
                                                </tr>
                                                <%
                                                            }

                                                        }

                                                    }
                                                %>

                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!--==================================-->                    
                    </div>
                </div>


            </div>
        </div><!--  end card  -->
    </div> <!-- end col-md-12 -->
</div> <!-- end row -->


<%
//ResourceBundle bundle = (ResourceBundle) session.getAttribute("bundle");
    problem = null;
    step1 = null;
    user = null;
    typeuser = null;
    itStep1 = null;
    // itPlanAction  = null;

    // Runtime.getRuntime().gc();
    //System.gc();
    //out.println(Runtime.getRuntime().freeMemory() / (1024 * 1024));

%>

<!--####################################################################
    #                                                                  #
    #                                                                  #
    ####################################################################-->

