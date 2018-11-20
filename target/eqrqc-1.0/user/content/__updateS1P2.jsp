

<%@page import="java.util.ResourceBundle"%>
<%@page import="entity.*"%>
<%@page import="service.*"%>


<%@page import="domaine.Design"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    //List<Step1> listStep1 = new ArrayList<Step1>();

    String id_problem = request.getParameter("id");
    Problem problem = ServiceProblem.find(Integer.parseInt(id_problem));
    TypeProblem typeProblem = problem.getIdTypeProblem();
    Step1 step1 = problem.getIdStep1();
    step1 = ServiceStep1.find(step1.getId());
    User user = problem.getIdUser();

    List<Step1Action> listStep1Action = step1.getStep1ActionList();
    List<Step1SecurityPlan> listStep1SecurityPlan = step1.getStep1SecurityPlanList();
    List<Step1ActionFollowed> listStep1ActionFollowed = step1.getStep1ActionFollowedList();
    //List<Step1Why> listStep1Why = step1.getSte
    List<Step1AlertCan> listStep1AlertCan = step1.getStep1AlertCanList();
    List<Step1AlertShould> listStep1AlertShould = step1.getStep1AlertShouldList();
    ResourceBundle bundle = (ResourceBundle) session.getAttribute("bundle");


%>



<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="card w3-border w3-border-gray">
                    
                        <div  class="w3-row w3-padding w3-dark-gray">
                            <div class="w3-left">
                                <h1 class="<%=Design.textTitle%>" >Actions immédiates</h1>
                            </div>
                            <div class="w3-right">
                                <button  onclick="document.location.href = 'Problem?id=<%=problem.getId()%>'" type="button" class="<%=Design.btn%> ti-eye w3-text-dark-gray"> 
                                </button>
                            </div>
                        </div>
                        <div class="w3-row w3-padding">
                            <div class="w3-col l12">
                                <br>    
                                <small>Que doit-on faire tout de suite pour sécuriser et redémarrer?</small>
                                <br>
                                <br>
                                <form name="f" action="<%=application.getContextPath()%>/UpdateS1P2?id=<%=problem.getId()%>" method="post">
                                    <div class="w3-row">
                                        <div class="w3-col l12">
                                            <div class="<%=Design.container%> w3-light-gray w3-padding">

                                                <!-- Button trigger modal -->
                                                <% if (listStep1SecurityPlan != null) {%>
                                                <div class="<%=Design.cadreTable%>">
                                                    <div class="<%=Design.containerTitle%>">
                                                        <div class="col-xs-5">
                                                            <h3 class="<%=Design.textNormal%>">Respecter votre Plan de sécurisation Client</h3>
                                                        </div>
                                                        <div class="w3-right">
                                                            <button data-toggle="modal" data-target="#exampleModal" style="border-radius: 5px;margin:3px;" type="button" class="<%=Design.btn%> ti-plus"></button>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <table  class="<%=Design.table%>" cellspacing="0" width="100%" style="width:100%">
                                                        <thead>
                                                            <tr class="">
                                                                <th class="" scope="col">#</th>
                                                                <th class="" scope="col">Où ?</th>
                                                                <th class="" scope="col">Qui ?</th>
                                                                <th class="" scope="col">Combien ?</th>
                                                                <th class="" scope="col">Resultat ?</th>
                                                                <th class="" scope="col">Supprimer</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                Step1SecurityPlan securityPlan = null;
                                                                for (int i = 0; i < listStep1SecurityPlan.size(); i++) {
                                                                    securityPlan = listStep1SecurityPlan.get(i);

                                                            %>

                                                            <tr>
                                                                <td><%=(i + 1)%></td>
                                                                <td><%=securityPlan.getWhere()%></td>
                                                                <td><%=securityPlan.getWho()%></td>
                                                                <td><%=securityPlan.getHowMuch()%></td>
                                                                <td><%=securityPlan.getResult()%></td>

                                                                <td>

                                                                    <form action="<%=application.getContextPath()%>/UpdateS1P2?id=<%=problem.getId()%>" method="post">
                                                                        <input hidden name="hashcode" type="text" value="<%= securityPlan.hashCode()%>">
                                                                        <button style="border-radius: 5px" name="removePlan" type="submit"   rel="tooltip" title="" class="<%=Design.btn%> w3-tiny w3-text-red" data-original-title1="Remove">
                                                                            <i class="ti-close"></i>
                                                                        </button>
                                                                    </form>

                                                                </td>
                                                            </tr>
                                                            <%

                                                                }
                                                            %>
                                                            <%
                                                                for (int i = listStep1SecurityPlan.size(); i < 3; i++) {
                                                            %>
                                                            <tr>
                                                                <td><%=(i + 1)%></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>

                                                            </tr>

                                                            <%
                                                                    }
                                                                }

                                                            %>
                                                        </tbody>
                                                    </table>
                                                </div>


                                            </div> 
                                            <br>
                                        </div>
                                    </div>
                                    <div class="w3-row">
                                        <div class="w3-col l12">
                                            <div class="<%=Design.container%> w3-light-gray w3-padding">
                                                <div class="w3-row">
                                                    <div class="w3-col l6">
                                                        <div class="form-check">
                                                            <div class="w3-left">
                                                                <span class="<%=Design.textNormal%>">Faut-il lancer un Trie ?</span>
                                                            </div>
                                                            <div class="w3-right">
                                                                <%if (step1.getSort()) {%>
                                                                <input name="sort" type="checkbox" class="switch-icon" checked onchange="changeSortCrit()">
                                                                <%} else {%>
                                                                <input name="sort" type="checkbox" class="switch-icon" onchange="changeSortCrit()">
                                                                <%}%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="w3-row">
                                                    <div class="w3-col l12">
                                                        <div id="criteria" class="w3-row1">
                                                            <div class="w3-col l6">
                                                                <b class="card-title"> Quel est le critéré de trie: ?</b>
                                                            </div>
                                                            <div class="w3-col l6">
                                                                <input id="sort_criterion" name="sort_criterion" class="w3-input w3-small w3-border w3-round " type="text" value="<%=step1.getSortCriterion()%>"  readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>




                                            </div>
                                            <br>
                                        </div>


                                    </div>     
                                    <!--======================================================-->
                                    <div class="w3-row">
                                        <div class="w3-col l12">
                                            <div class="<%=Design.container%> w3-light-gray w3-padding">
                                                <div class="form-group">
                                                    <h5 class="">Autre Actions immédiates :</h5>
                                                    <textarea name="immediate_actions" class="w3-input w3-border" rows="5" dir="rtl" style="text-align: left;">
                                                        <%=step1.getImmediateActions().trim()%>
                                                    </textarea>
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="w3-row">
                                        <div class="w3-col l12">
                                            <div class="<%=Design.container%> w3-light-gray w3-padding ">
                                                <div class="form-check">
                                                    <div class="w3-left">
                                                        <span class="<%=Design.textNormal%>">Validation de redémarrage</span>
                                                    </div>
                                                    <div class="w3-right">
                                                        <%if (step1.getStartValidation()) {%>
                                                        <input name="start_validation" type="checkbox" class="switch-icon" checked>
                                                        <%} else {%>
                                                        <input name="start_validation" type="checkbox" class="switch-icon" >
                                                        <%}%>

                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="w3-row">
                                        <div class="w3-col l12">
                                            <div class="form-group">
                                                <button style="border-radius: 5px" type="submit" class="<%=Design.btn%> ti-save" name="S1P2"></button>
                                                <button style="border-radius: 5px" type="reset" class="<%=Design.btn%> ti-back-left"></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <br>
                        </div>
                   
                </div>  

            </div>
        </div>

    </div><!--  end card  -->
</div> <!-- end col-md-12 -->
<!-- </div>  end row -->



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="w3-text-black" aria-hiddenx="true">&times;</span>
                </button>
                <br><br>
                <div class="<%=Design.containerTitle%>">
                    <h3 class="<%=Design.textTitle%>">Plan de sécurisation Client</h3>
                </div>
                <div class="<%=Design.container%>">
                    <br>
                    <form method="post" action="<%=application.getContextPath()%>/UpdateS1P2?id=<%=problem.getId()%>">
                        <div class="card-content">
                            <div class="form-group">
                                <label>Où ?</label><star> *</star>
                                <input name="where" type="text" placeholder="" class="<%=Design.inputText%>" required>
                            </div>
                            <div class="form-group">
                                <label>Qui ?</label><star> *</star>
                                <input name="who" type="text" placeholder="" class="<%=Design.inputText%>" required>
                            </div>
                            <div class="form-group">
                                <label>Combien ?</label><star> *</star>
                                <input  name="n1" type="number" class="<%=Design.inputText%>" required>

                            </div>
                            <div class="form-group">
                                <label>Resultat (par défaut)</label>
                                <input readonly value="0" name="n2" type="number" class="<%=Design.inputText%> w3-light-gray w3-text-gray" required>

                            </div>
                            <div class="form-group">
                                <button name="AddPlan" style="border-radius: 5px" type="submit" class="<%=Design.btn%>">Ajouter</button>
                                <button style="border-radius: 5px" type="reset" class="<%=Design.btn%>">Annuler</button>
                            </div>
                        </div>
                    </form>
                    <br>
                </div>




            </div>
        </div>
    </div>
</div>


<script>
    function changeSortCrit()
    {
        var sc = document.f.sort_criterion;
        if (document.f.sort.checked)
        {
            sc.readOnly = false;
            document.getElementById("criteria").classList.remove('hide');

        } else {
            sc.readOnly = true;
            document.getElementById("criteria").classList.add('hide');
            document.getElementById("sort_criterion").value = "";
        }

    }
</script>