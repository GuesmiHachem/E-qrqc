
<%@page import="entity.*"%>
<%@page import="service.*"%>
<%@page import="domaine.Design"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ResourceBundle"%>
<%
    entity.Problem problem = (entity.Problem) session.getAttribute("problem");
    ResourceBundle bundle = (ResourceBundle) session.getAttribute("bundle");
%>


<div class="content w3-light-gray" >
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">


                <div class="card w3-white w3-border-grey w3-border">
                    <div class="card-content " >

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
                            <h2 class="<%=Design.textTitle%>">Caractérisation</h2>
                        </div>
                        <div class="<%=Design.container%>">
                            <br>
                            <form  action="<%=application.getContextPath()%>/CreateS1P1"  method="post"  enctype="multipart/form-data" >

                                <div class="row">
                                    <div class="col-lg-5">
                                        <!--#######################################-->
                                        <!--================================-->
                                        <div class="form-group">
                                            <input  name="reference" type="text" class="w3-input w3-border w3-border-grey w3-white form-control" placeholder="Reference" required>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6>Que s'est t'il passé&nbsp;?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="what" type="text" class="w3-input w3-border w3-round " placeholder="est-ce un probléme ?" required>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><% out.println(bundle.getString("quand"));%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="when" type="text" class="w3-input w3-border w3-round datetimepicker" placeholder="date et heure ?" required>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><% out.println(bundle.getString("ou"));%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="where" type="text" class="w3-input w3-border w3-round  " placeholder="détecté / généré ?" required>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><% out.println(bundle.getString("qui"));%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="who" type="text" class="w3-input w3-border w3-round " placeholder="a détecté le probléme ?" required>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><% out.println(bundle.getString("comment"));%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="how" type="text" class="w3-input w3-border w3-round " placeholder="a-t-il eté détecté ?" required> 
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><% out.println(bundle.getString("combien"));%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="how_match" type="number" class="w3-input w3-border w3-round " placeholder="de défauts? Pertes?" required>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><% out.println(bundle.getString("pourquoi"));%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="why" type="text" class="w3-input w3-border w3-round " placeholder="est-ce un probléme ?" required>
                                            </div>
                                        </div>
                                            <hr>
                                        <div class="form-group row">
                                            <div class="col">
                                                <div class="<%=Design.container%> w3-padding1">
                                                    <div class="form-check">
                                                        <div class="w3-left">
                                                            <span class="<%=Design.textNormal%>">Respect du standard</span>
                                                        </div>
                                                        <div class="w3-right">
                                                            <input name="respect_standard" type="checkbox" class="switch-icon" checked1>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col">
                                                <div class="<%=Design.container%> w3-padding1">
                                                    <div class="form-check">
                                                        <div class="w3-left">
                                                            <span class="<%=Design.textNormal%>">Problème récurrent</span>
                                                        </div>
                                                        <div class="w3-right">
                                                            <input name="probleme_recurrent" type="checkbox" class="switch-icon" checked1>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br> 
                                              

                                        </div>

                                        <!--#######################################-->
                                    </div>

                                    <div class="col-lg-4 ">
                                        <!--#######################################-->
                                        <div class="col-md-12">

                                            <div class="<%=Design.containerTitle%>">
                                                <h3 class="<%=Design.textNormal%> w3-text-pink">PIECE MAUVAISE</h3>
                                            </div>
                                            <div class="w3-container w3-white w3-margin-bottom">
                                                <br>
                                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail">
                                                        <img src="<%=application.getContextPath()%>/assets/img/upload.png" alt="...">
                                                    </div>
                                                    <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                    <div>
                                                        <span class="w3-btn w3-light-gray w3-round w3-border btn-file" style="border-radius: 5px">
                                                            <span class="fileinput-new">Select image</span>
                                                            <span class="fileinput-exists">Change</span>
                                                            <input name="bad_piece" type="file" accept="image/*" required/>
                                                        </span>
                                                        <a style="border-radius: 5px" href="#pablo" class="w3-btn w3-light-gray w3-round w3-border fileinput-exists" data-dismiss="fileinput"><i class="fa fa-filltimes"></i> Remove</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-md-12">

                                            <div class="<%=Design.containerTitle%>">
                                                <h3 class="<%=Design.textNormal%> w3-text-green">PIECE BONNE </h3>
                                            </div>
                                            <div class="w3-container w3-white w3-margin-bottom">
                                                <br>
                                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail">
                                                        <img src="<%=application.getContextPath()%>/assets/img/upload.png" alt="...">
                                                    </div>
                                                    <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                    <div>
                                                        <span style="border-radius: 5px"  class="w3-btn w3-light-gray w3-round w3-border btn-file ">
                                                            <span class="fileinput-new">Select image</span>
                                                            <span class="fileinput-exists">Change</span>
                                                            <input name="good_piece" type="file" required accept="image/*"/>
                                                        </span>
                                                        <a style="border-radius: 5px" href="#pablo" class="w3-btn w3-light-gray w3-round w3-border fileinput-exists" data-dismiss="fileinput"><i class="fa fa-btn-filltimes"></i> Remove</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!--#######################################-->
                                    </div>

                                    <div class="col-lg-3" >
                                        <div class="col">
                                            <div class="<%=Design.containerTitle%>">
                                                <h3 class="<%=Design.textTitle%>">Type de probleme</h3>
                                            </div>
                                        </div>
                                        <!--#######################################-->
                                        <div class="col ">

                                            <%  List<TypeProblem> listTypeProblem = ServiceTypeProblem.findAll();
                                                for (TypeProblem typeProblem : listTypeProblem) {
                                                    String value = typeProblem.getName();
                                            %>
                                            <div class="radio">
                                                <input type="radio" name="type_problem" id="radio<%=typeProblem.getId()%>" value="<%=typeProblem.getId()%>" >
                                                <label for="radio<%=typeProblem.getId()%>">
                                                    <%=value%>
                                                </label>
                                            </div>
                                            <%}%>
                                        </div>


                                        <hr>

                                        <div class="col">
                                            <div class="<%=Design.containerTitle%>">
                                                <h3 class="<%=Design.textTitle%>">Qui doit être Alerté</h3>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="col">

                                            <select name="ShouldAlerted" class="selectpicker w3-hover-light-gray w3-white" data-style="<%=Design.inputText%> w3-hover-light-gray  w3-white" multiple title="" data-size="7">
                                                <%  List<TypeUser> listTypeUser1 = ServiceTypeUser.findAll();
                                                    for (TypeUser typeUser : listTypeUser1) {
                                                        String value = typeUser.getName();
                                                %>
                                                <option class="w3-hover-light-gray" draggable value="<%=typeUser.getId()%>"><%=value%></option>   
                                                <%}%>
                                            </select>

                                        </div>
                                        <br>
                                        <div class="col">
                                            <div class="<%=Design.containerTitle%>">
                                                <h3 class="<%=Design.textTitle%>">Qui peut être Alerté</h3>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="col">

                                            <select name="CanAlerted" class="selectpicker w3-hover-light-gray w3-white" data-style="<%=Design.inputText%> w3-hover-light-gray  w3-white" multiple title="" data-size="7">
                                                <%  List<TypeUser> listTypeUser2 = ServiceTypeUser.findAll();
                                                    for (TypeUser typeUser : listTypeUser2) {
                                                        String value = typeUser.getName();
                                                %>
                                                <option class="w3-hover-light-gray" draggable value="<%=typeUser.getId()%>"><%=value%></option>   
                                                <%}%>
                                            </select>
                                        </div>

                                        <!--#######################################-->
                                    </div>

                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-lg-12   ">
                                        <div class="form-group">
                                            <button style="border-radius: 5px" type="submit" class="<%=Design.btn%>" name="S1P1">Suivant</button>
                                            <button style="border-radius: 5px" type="reset" class="<%=Design.btn%>"><% out.println(bundle.getString("annuler"));%></button>
                                        </div>
                                    </div>
                                </div> 
                            </form>
                        </div>




                    </div>
                </div>


            </div>
        </div>
    </div> 
</div> 

<%
    listTypeProblem = null;
    listTypeUser1 = null;
    listTypeUser2 = null;

%>