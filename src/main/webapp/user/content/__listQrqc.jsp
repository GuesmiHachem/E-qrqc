<%@page import="java.sql.Time"%>
<%@page import="entity.*"%>
<%@page import="service.*"%>
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
    User userContent = (User) session.getAttribute("user");
    Problem problem = null;
    Step1 step1 = null;
    User user = null;
    TypeUser typeuser = null;
    TypeProblem typeProblem = null;
    List<Problem> listProblem = ServiceProblem.findAll();

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
                                    <div class="col-xs-5">
                                        <h3 class="<%=Design.textNormal%>">List des QRQC</h3>
                                    </div>
                                    <div class="w3-right">
                                        <button  onclick="document.location.href = 'CreateS1P1'" style="border-radius: 5px;margin:3px;"  type="button" class="<%=Design.btn%> ti-plus"> 
                                        </button>
                                    </div>
                                </div>
                                <div class="">
                                    <br>
                                    <div class="<%=Design.cadreTable%>">
                                        <table id="datatables"  class="<%=Design.table%>" cellspacing="0" width="100%" >
                                            <thead >
                                                <tr class="w3-light-gray w3-text-dark-gray w3-small" >
                                                    <th style=" white-space: nowrap;"> Code&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Status&nbsp;</th>

                                                    <th style=" white-space: nowrap;"> Utilisateur&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Niveau_E&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Niveau_1&nbsp;</th>

                                                    <th style=" white-space: nowrap;"> Référence&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Type_de_problem&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Date_creation&nbsp;</th>

                                                    <th style=" white-space: nowrap;"> Jour&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Mois&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Année&nbsp;</th>
                                                    <th style=" white-space: nowrap;"> Heure&nbsp;</th>

                                                    <th style=" white-space: nowrap;" class="disabled-sorting"> </th>
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
                                                    for (Problem p : listProblem) {
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

                                                    <td style=" white-space: nowrap;"><%=p.getDateCreation().getDate()%></td>
                                                    <td style=" white-space: nowrap;"><%=p.getDateCreation().getMonth() + 1%></td>
                                                    <td style=" white-space: nowrap;"><%=p.getDateCreation().getYear() + 1900%></td>


                                                    <td style=" white-space: nowrap;"><%=new Time(p.getDateCreation().getTime())%></td>

                                                    <td>
                                                        <form action="<%=application.getContextPath()%>/ListProblem" method="post">
                                                            <a href="Problem?id=<%=p.getId()%>" class="<%=Design.btn%> w3-text-green ti-eye " ></a>

                                                            <input hidden name="id" type="text" value="<%= p.getId()%>"/>
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

    // Runtime.getRuntime().gc();
    //System.gc();
    //out.println(Runtime.getRuntime().freeMemory() / (1024 * 1024));

%>

<!--####################################################################
    #                                                                  #
    #                                                                  #
    ####################################################################-->

<script>
    function listQrqc() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("listQrqc").innerHTML =
                        this.responseText;
            }
        };
        xhttp.open("GET", "<%=application.getContextPath()%>/user/ajax/listQrqc.jsp", true);
        xhttp.send();
    }
</script>

<script>


</script>