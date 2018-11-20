<%@page import="entity.*"%>
<%@page import="service.*"%>
<%@page import="domaine.Design"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ResourceBundle"%>
<%@page import="java.util.List"%>
<%
    entity.Problem problem = (entity.Problem) session.getAttribute("problem");
    ResourceBundle bundle = (ResourceBundle) session.getAttribute("bundle");
    List<Step1SecurityPlan> listStep1SecurityPlan = (List<Step1SecurityPlan>) session.getAttribute("listSecurityPlan");
%>

<%
    if (listStep1SecurityPlan == null) {
        listStep1SecurityPlan = new ArrayList<Step1SecurityPlan>();
        session.setAttribute("listSecurityPlan", listStep1SecurityPlan);
    }
%>

<div class="content w3-light-gray">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="card w3-white w3-border w3-border-grey">
                    <div class="card-content ">

                        <div class="w3-round w3-light-blue w3-padding">
                            <div class="row">
                                <div class="col-lg-3 ">
                                    <p class="w3-large w3-borderd w3-white w3-round-large w3-padding-small"><% out.println(bundle.getString("probleme"));%>  </b></p>
                                </div>
                                <div class="col-lg-3 ">
                                    <p class="w3-large w3-borderd w3-white w3-round-large w3-padding-small">Niveau E: <%=problem.getIdUser().getIdLevel0().getName()%></p>
                                </div>
                                <div class="col-lg-3 ">
                                    <p class="w3-large w3-borderd w3-white w3-round-large w3-padding-small">Niveau 1: <%=problem.getIdLevel1().getName()%></p>
                                </div>
                                <div class="col-lg-3">
                                    <p class="w3-large w3-borderd w3-white w3-round-large w3-padding-small">Code : <%=problem.getCode()%></p>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="<%=Design.containerTitle%>">
                            <h2 class="<%=Design.textTitle%>">Actions immédiates </h2>
                            <small>Que doit-on faire tout de suite pour sécuriser et redémarrer?</small>
                        </div>
                        <div class="<%=Design.container%>">
                            <div class="row">

                                <div class="col-lg-12">
                                    <h3 class="">Respecter votre Plan de sécurisation Client.</h3>

                                    <!-- Button trigger modal -->
                                    <button data-toggle="modal" data-target="#exampleModal" style="border-radius: 5px" type="button" class="<%=Design.btn%>">Ajouter</button>
                                    <br><br>
                                    <% if (listStep1SecurityPlan != null) {%>
                                    <div class="<%=Design.cadreTable%>">
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

                                                        <form action="<%=application.getContextPath()%>/CreateS1P2" method="post">
                                                            <input hidden name="hashcode" type="text" value="<%= securityPlan.hashCode()%>">
                                                            <button style="border-radius: 5px" name="removePlan" type="submit"   rel="tooltip" title="" class=" w3-white w3-text-red" data-original-title="Remove">
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
                            </div>

                            <!--======================================================-->
                            <form name="f" action="<%=application.getContextPath()%>/CreateS1P2" method="post">
                                <hr>



                                <div class="row">
                                    <div class="col-lg-6">
                                        <b class="card-title">  Faut-il lancer un Trie ?</b>
                                    </div>
                                    <div class="col-lg-2 col-md-6">
                                        <input name="sort" type="checkbox" class="switch-icon" onchange="changeSortCrit()">
                                    </div>
                                </div>
                                <br>
                                <div id="criteria" class="row hide">
                                    <div class="col-lg-6 col-md-6">
                                        <b class="card-title"> Quel est le critéré de trie: ?</b>
                                    </div>
                                    <div class="col-lg-3 col-md-6">
                                        <input name="sort_criterion" class="w3-input w3-small w3-border w3-round " type="text" placeholder=""  readonly>
                                    </div>
                                </div>

                                <!--======================================================-->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <h5 class="">Autre Actions immédiates :</h5>
                                            <textarea name="immediate_actions" class="w3-input w3-border " rows="3"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <b class="card-title">Validation de redémarrage ?</b>
                                    </div>
                                    <div class="col-lg-2 col-md-6">
                                        <input name="start_validation" type="checkbox" class="switch-icon">
                                    </div>
                                </div>            
                                <br> 
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <button style="border-radius: 5px" name="S1P2" type="submit" class="<%=Design.btn%>">Finir</button>
                                            <button style="border-radius: 5px" type="reset" class="<%=Design.btn%>">Annuler</button>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>


                    </div>
                </div><!--  end card  -->
            </div> <!-- end col-md-12 -->
        </div> <!-- end row -->
    </div>
</div>







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
                    <form method="post" action="<%=application.getContextPath()%>/CreateS1P2">
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
<%
    problem = null;
    listStep1SecurityPlan = null;

%>
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
        }

    }
</script>