

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
                                <h1 class="<%=Design.textTitle%>" >Caractérisation</h1>
                            </div>
                            <div class="w3-right">
                                <button  onclick="document.location.href = 'Problem?id=<%=problem.getId()%>'" type="button" class="<%=Design.btn%> ti-eye w3-text-dark-gray"> 
                                </button>
                            </div>
                        </div>

                        <div class="<%=Design.container%>">
                            <br>
                            <form  action="<%=application.getContextPath()%>/UpdateS1P1?id=<%=problem.getId()%>"  method="post"  enctype="multipart/form-data" >

                                <div class="row">
                                    <div class="col-lg-5">
                                        <!--#######################################-->
                                        <!--================================-->
                                        <div class="form-group">
                                            <input  name="reference" type="text" class="w3-input w3-border w3-border-grey w3-white form-control" value="<%=problem.getReference()%>" required1>
                                        </div 


                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6>Que s'est t'il passé&nbsp;?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="what" type="text" class="w3-input w3-border w3-round " value="<%=step1.getWhat()%>" required1>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><%=bundle.getString("quand")%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="when" type="text" class="w3-input w3-border w3-round datetimepicker" value="<%=step1.getWhen()%>" required1>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><%=bundle.getString("ou")%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="where" type="text" class="w3-input w3-border w3-round  " value="<%=step1.getWhere()%>" required1>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><%=bundle.getString("qui")%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="who" type="text" class="w3-input w3-border w3-round " value="<%=step1.getWho()%>" required1>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><%=bundle.getString("comment")%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="how" type="text" class="w3-input w3-border w3-round " value="<%=step1.getHow()%>" required1> 
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><%=bundle.getString("combien")%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="how_match" type="number" class="w3-input w3-border w3-round " value="<%=step1.getHowMutch()%>" required1>
                                            </div>
                                        </div>
                                        <!--================================-->
                                        <div class="form-group row">
                                            <label  class="col-lg-4">
                                                <h6><%=bundle.getString("pourquoi")%> ?</h6>
                                            </label>
                                            <div class="col-lg-8">
                                                <input name="why" type="text" class="w3-input w3-border w3-round " value="<%=step1.getWhy()%>" required1>
                                            </div>
                                        </div>
                                        <hr>
                                        <!--#######################################-->
                                        <div class="form-group row">
                                            <div class="col">
                                                <div class="<%=Design.container%> w3-padding1">
                                                    <div class="form-check">
                                                        <div class="w3-left">
                                                            <span class="<%=Design.textNormal%>">Respect du standard</span>
                                                        </div>
                                                        <div class="w3-right">
                                                            <%if (step1.getRespectStandard()) {%>
                                                            <input name="respect_standard" type="checkbox" class="switch-icon" checked>
                                                            <%} else {%>
                                                            <input name="respect_standard" type="checkbox" class="switch-icon" >
                                                            <%}%>
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
                                                            <%if (step1.getRecognizedProblem()) {%>
                                                            <input name="probleme_recurrent" type="checkbox" class="switch-icon" checked>
                                                            <%} else {%>
                                                            <input name="probleme_recurrent" type="checkbox" class="switch-icon" >
                                                            <%}%>

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
                                        <div class="col-lg-12">

                                            <div class="<%=Design.containerTitle%>">
                                                <h3 class="<%=Design.textNormal%> w3-text-pink">PIECE MAUVAISE</h3>
                                            </div>
                                            <div class="w3-container w3-white w3-margin-bottom">
                                                <br>
                                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail">
                                                        <img src="<%=application.getContextPath()%>/upload/<%=step1.getBadPiece()%>" alt="...">
                                                    </div>
                                                    <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                    <div>
                                                        <span class="w3-btn w3-light-gray w3-round w3-border btn-file" style="border-radius: 5px">
                                                            <span class="fileinput-new">Select image</span>
                                                            <span class="fileinput-exists">Change</span>
                                                            <input name="bad_piece" type="file" accept="image/*" />
                                                        </span>
                                                        <a style="border-radius: 5px" href="#pablo" class="w3-btn w3-light-gray w3-round w3-border fileinput-exists" data-dismiss="fileinput"><i class="fa fa-filltimes"></i> Remove</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-lg-12">

                                            <div class="<%=Design.containerTitle%>">
                                                <h3 class="<%=Design.textNormal%> w3-text-green">PIECE BONNE </h3>
                                            </div>
                                            <div class="w3-container w3-white w3-margin-bottom">
                                                <br>
                                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail">
                                                        <img src="<%=application.getContextPath()%>/upload/<%=step1.getGoodPiece()%>" alt="...">
                                                    </div>
                                                    <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                    <div>
                                                        <span style="border-radius: 5px"  class="w3-btn w3-light-gray w3-round w3-border btn-file ">
                                                            <span class="fileinput-new">Select image</span>
                                                            <span class="fileinput-exists">Change</span>
                                                            <input name="good_piece" type="file" accept="image/*"/>
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
                                                for (TypeProblem tp : listTypeProblem) {
                                                    String value = tp.getName();
                                                    if (tp.equals(typeProblem)) {
                                            %>
                                            <div class="radio">
                                                <input type="radio" name="type_problem" id="radio<%=tp.getId()%>" value="<%=tp.getId()%>"  checked>
                                                <label for="radio<%=tp.getId()%>">
                                                    <%=value%>
                                                </label>
                                            </div>
                                            <%} else {%>
                                            <div class="radio">
                                                <input type="radio" name="type_problem" id="radio<%=tp.getId()%>" value="<%=tp.getId()%>"  >
                                                <label for="radio<%=tp.getId()%>">
                                                    <%=value%>
                                                </label>
                                            </div>
                                            <%}
                                                }%>
                                        </div>


                                        <!--#######################################-->
                                    </div>

                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-lg-12   ">
                                        <div class="form-group">
                                            <button style="border-radius: 5px" type="submit" class="<%=Design.btn%> ti-save" name="S1P1"></button>
                                            <button style="border-radius: 5px" type="reset" class="<%=Design.btn%> ti-back-left"></button>
                                        </div>
                                    </div>
                                </div> 
                            </form>
                        </div>
                                        
                                        
                    
                </div>


            </div>
        </div>

    </div><!--  end card  -->
</div> <!-- end col-md-12 -->
<!-- </div>  end row -->
