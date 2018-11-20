<%@page import="service.ServiceHardware"%>
<%@page import="domaine.Design"%>
<%@page import="entity.Level1"%>
<%@page import="service.ServiceLevel1"%>
<%@page import="entity.Hardware"%>
<div class="w3-row ">
    <div class="w3-col l3 "><br></div>
    <div class="w3-col l6 ">
        <br>
        <%  try {
                String idHardware = request.getParameter("idHardware");
                Hardware hardware = null;
                if (!idHardware.equals("null")) {
                    if (!idHardware.equals("")) {
                        hardware = ServiceHardware.find(Integer.parseInt(idHardware));
                    }

                }

                // Hardware hardware = (Hardware) session.getAttribute("hardware");
                if (hardware != null) {
        %> 
        <div class="w3-row">
            <div class="w3-col l12">

                <div class="w3-dark-gray w3-panel1 w3-round w3-padding ">
                    <br>
                    <div class="w3-row w3-margin-bottom">
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-gray w3-text-light-gray ">Nom de l'appareil</p>
                        </div>
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-white "><%=hardware.getName()%></p>
                        </div>
                    </div>
                    <div class="w3-row w3-margin-bottom">
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-gray w3-text-light-gray ">Date de Création</p>
                        </div>
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-white "><%=hardware.getDateCreation().toLocaleString()%></p>
                        </div>
                    </div>
                    <div class="w3-row w3-margin-bottom">
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-gray w3-text-light-gray ">Niveau 1</p>
                        </div>
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-white "><%=ServiceLevel1.find(hardware.getIdLevel1().getId()).getName()%></p>
                        </div>
                    </div>
                    <div class="w3-row w3-margin-bottom">

                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-gray w3-text-light-gray ">Status</p>
                        </div>
                        <%if (hardware.getActive()) {%>
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-white w3-text-green">Oui</p>
                        </div>
                        <%} else {%>
                        <div class="w3-col l6">
                            <p class="w3-padding-small w3-round1 w3-white w3-text-pink">Non</p>
                        </div>
                        <%}%>
                    </div>    
                </div>       

            </div>
        </div>
        <%    if (hardware.getActive() == true) {%>
        <!--#########################################################-->
        <form  name="f" class="w3-white" novalidate="" id="loginFormValidation" method="post" action="<%=application.getContextPath()%>/Connexion">

            <div class="<%=Design.card%>">
                <div class="card-content ">
                    <div class="card-header">
                        <h3 class="card-title">Connexion</h3>
                    </div>
                    <div class="card-content">



                        <div class="form-group">
                            <h3 class="<%=Design.textTitle%>">Login <star> *</star></h3>
                            <input name="login" type="text" placeholder="Login" class="form-control " required>
                        </div>
                        <div class="form-group">
                            <h3 class="<%=Design.textTitle%>">Password <star> *</star></h3>
                            <input  name="password" type="password" placeholder="Password" class="form-control " required>
                        </div>
                        <br>
                        <div class="category"><star>*</star> Required fields</div>

                    </div>
                    <div class="card-footer text-center">
                        <button type="submit" class="w3-btn w3-round w3-light-blue">Connecter</button>
                    </div>
                </div>
            </div>
        </form>
        <!--#########################################################-->                     
        <%} else {%>
        <!--#########################################################-->
        <div class="w3-row">
            <div class="w3-col l12">
                <div class="w3-white w3-round w3-padding w3-border">
                    <br><br>
                    <span class="w3-large w3-text-green"><b>Activation en attente ...</b></span>
                    <br><br><br><br>
                    <center>
                        <i class="fa fa-hourglass-2" style="font-size:70px"></i>
                    </center>
                    <br><br>
                </div>


            </div>
        </div>
        <!--#########################################################-->
        <% }
        } else {%>
        <!--#########################################################-->
        <form name="f_index2" method="get" >
            <div class="w3-row">
                <div class="w3-col l12">
                    <div class="w3-white w3-round w3-padding">
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Nom de l'appareil </label>
                            <input name="name" type="text" class="form-control w3-white w3-hover-border-blue" id="exampleFormControlInput1" placeholder="Tablette Azus">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Ligne</label>
                            <select  name="idLigne" class="form-control w3-white w3-hover-border-blue"  id="exampleFormControlSelect1">
                                <%
                                    for (Level1 level1 : ServiceLevel1.findAll()) {
                                %>
                                <option value="<%=level1.getId()%>" class="w3-input w3-text-light-gray">
                                    <%=level1.getName()%>
                                </option>
                                <option value="<%=level1.getId()%>" class="w3-text-light-gray w3-padding">
                                    <%=level1.getName()%>
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <br>
                        <br>
                        <button type="button" class="form-control w3-blue w3-btn w3-round w3-block " onclick="if (addHardware()) {
                                    redirectHome();
                                }">Ajouter mon appareil  </button>
                    </div>
                </div>
            </div>
        </form>
        <!--#########################################################-->
        <%}%>

    </div> 
    <div class="w3-col l3 "><br></div>
</div>

<%
    } catch (Exception e) {

    }
%>