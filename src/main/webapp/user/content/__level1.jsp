<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.*"%>
<%@page import="service.*"%>

<%@page import="domaine.Design"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ResourceBundle"%>

<%
    Level1 level1 = (Level1) request.getAttribute("level1");
    Level2 level2 = (Level2) request.getAttribute("level2");
    Level3 level3 = (Level3) request.getAttribute("level3");
    Level1 level1Next = (Level1) request.getAttribute("level1Next");
    Level1 level1Prev = (Level1) request.getAttribute("level1Prev");
%>

<div class="content " >
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">



                <!-- card  -->   
                <div class="<%=Design.card%>">
                    <div class="card-content ">

                        <!--================================================-->
                        <div class="row ">
                            <div class="col-lg-12 ">

                                <nav aria-label="breadcrumb" >
                                    <ol class="breadcrumb w3-green w3-text-white">
                                        <li class="breadcrumb-item"><a  class="w3-text-white" href="Level">List des activit�s</a></li>
                                        <li class="breadcrumb-item"><a  class="w3-text-white" href="L3?id=<%=level3.getId()%>"><%=level3.getName()%></a></li>
                                        <li class="breadcrumb-item"><a  class="w3-text-white" href="L2?id=<%=level2.getId()%>"><%=level2.getName()%></a></li>
                                        <li class="breadcrumb-item"><a  class="w3-text-white" href="L1?id=<%=level1.getId()%>"><%=level1.getName()%></a></li>
                                    </ol>

                                    <form action="<%=application.getContextPath()%>/L1?id=<%=level1.getId()%>" method="post">
                                        <a style="margin:3px;" href="L1?id=<%=level1Prev.getId()%>"><i  class="<%=Design.btn%> fa fa-chevron-circle-left"></i></a>
                                        <a style="margin:3px;" href="L1?id=<%=level1Next.getId()%>"><i  class=" <%=Design.btn%> fa fa-chevron-circle-right"></i></a>

                                        <button onclick="if (window.confirm('Voulez-vous vraiment supprimer ?')) {
                                                    return true;
                                                } else {
                                                    return false;
                                                }" style="border-radius: 5px;margin:3px;" name="deleteAll" type="submit" class="<%=Design.btn%> fa fa-trash"> 
                                        </button>
                                        <button  data-toggle="modal" data-target="#renameLevel" style="border-radius: 5px;margin:3px;" name="renameLevel" type="button" class="<%=Design.btn%>  fa fa-edit"> 
                                        </button>
                                        <button data-toggle="modal" data-target="#addLevel" style="border-radius: 5px;margin:3px;" name="addLevel" type="button" class="<%=Design.btn%> fa fa-plus"> 
                                        </button>
                                        <button data-toggle="modal" data-target="#addUser" style="border-radius: 5px;margin:3px;" name="addUser" type="button" class="<%=Design.btn%> fa fa-user-plus"> 
                                        </button>
                                    </form>


                                </nav>      
                                <br>
                                <div class="<%=Design.containerTitle%>">
                                    <h3 class="<%=Design.textNormal%>">Utilisateurs</h3>
                                </div>
                                <div class="<%=Design.container%>">
                                    <br>
                                    <div class="<%=Design.cadreTable%>">
                                        <table class="<%=Design.table%>" cellspacing="0" width="100%" style="width:100%">
                                            <thead>
                                                <tr class="w3-light-gray w3-text-dark-gray">
                                                    <th>ID</th>
                                                    <th>Nom</th>
                                                    <th>Prenom</th>
                                                    <th>Type d'utilisateur</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% List<User> listUser = level1.getUserList(); %>
                                                <% for (User user : listUser) {%>
                                                <tr>
                                                    <td><%=user.getId()%></td>
                                                    <td><%=user.getName()%></td>
                                                    <td><%=user.getFirstName()%></td>
                                                    <td><%=user.getIdTypeUser().getName()%></td>
                                                    <td>
                                                        <form class="form-horizontal " action="" method="post">
                                                            <input hidden style="margin:3px;" name="idUser" type="text" class="w3-hide" placeholder="" value="<%=user.getId()%>">
                                                            <button onclick="if (window.confirm('Voulez-vous vraiment supprimer ?')) {
                                                                        return true;
                                                                    } else {
                                                                        return false;
                                                                    }" name="deleteUser" type="submit" class="<%=Design.btn%> w3-hover-red ti-trash"> 
                                                            </button>
                                                            <a href="User?id=<%=user.getId()%>" class="<%=Design.btn%> w3-hover-green ti-eye"> 
                                                            </a>
                                                        </form>

                                                    </td>

                                                </tr>
                                                <% }%>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                </div>
                                <br> 
                                <div class="<%=Design.containerTitle%>">
                                    <h3 class="<%=Design.textNormal%>">Niveau E</h3>
                                </div>
                                <div class="<%=Design.container%>">
                                    <br>
                                    <div class="<%=Design.cadreTable%>">
                                        <table class="<%=Design.table%>" cellspacing="0" width="100%" style="width:100%">
                                            <thead>
                                                <tr class="w3-light-gray w3-text-dark-gray">
                                                    <th>ID</th>
                                                    <th>Nom</th>
                                                    <th>Rang</th>
                                                    <th>Start Time</th>
                                                    <th>End Time</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% List<Level0> listLevel0 = level1.getLevel0List(); %>
                                                <% for (Level0 l : listLevel0) {
                                                        DateFormat sdf = new SimpleDateFormat("HH:mm");
                                                %>
                                                <tr>
                                                    <td><%=l.getId()%></td>
                                                    <td><%=l.getName()%></td>
                                                    <td><%=l.getIdRankTeam().getName()%></td>
                                                    <td><%=sdf.format(l.getIdRankTeam().getStartTime())%></td>
                                                    <td><%=sdf.format(l.getIdRankTeam().getEndTime())%></td>
                                                    <td>
                                                        <form class="form-horizontal " action="" method="post">
                                                            <input hidden style="margin:3px;" name="idLevel" type="text" class="w3-hide" placeholder="" value="<%=l.getId()%>">
                                                            <button onclick="if (window.confirm('Voulez-vous vraiment supprimer ?')) {
                                                                        return true;
                                                                    } else {
                                                                        return false;
                                                                    }" name="deleteLevel" type="submit" class="<%=Design.btn%> w3-hover-red ti-trash"> 
                                                            </button>
                                                            <a href="LE?id=<%=l.getId()%>" class="<%=Design.btn%> w3-hover-green ti-eye "> 
                                                            </a>
                                                        </form>

                                                    </td>

                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</div> 


<div class="modal fade" id="addLevel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body bg-white">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="w3-text-black" aria-hiddenx="true">&times;</span>
                </button>
                <br><br>
                <div class="<%=Design.containerTitle%>">
                    <h3 class="<%=Design.textTitle%>">Ajouter un niveau</h3>
                </div>
                <div class="<%=Design.container%>">
                    <br>
                    <form  action="<%=application.getContextPath()%>/L1?id=<%=level1.getId()%>" method="post" >
                        <div class="card-content">
                            <div class="form-group">
                                <p class="<%=Design.textNormal%>">Nom du niveau <star> *</star></p>
                                <input class="<%=Design.inputText%>" name="nameLevel" type="text" required="true" >
                            </div>
                            <div class="form-group">
                                <p class="<%=Design.textNormal%>">Rang d'equipe <star> *</star></p>
                                <select id="idTypeUser" name="idRankTeam" class="selectpickers <%=Design.inputText%>" required>
                                    <% List<RankTeam> listRankTeam = ServiceRankTeam.findAll();
                                        for (RankTeam rankTeam : listRankTeam) {
                                            String value = rankTeam.getName();
                                    %>
                                    <option class="" draggable value="<%=rankTeam.getId()%>"><%=value%></option>   
                                    <%}%>
                                </select>
                            </div>
                        </div>
                        <button style="border-radius: 5px;" name="addLevel" type="submit" class="<%=Design.btn%>">Ajouter</button>
                        <button style="border-radius: 5px;" type="reset" class="<%=Design.btn%>">Annuler</button>
                    </form>
                    <br>
                </div>

            </div> 
        </div>
    </div>
</div>  


<div class="modal fade" id="renameLevel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body bg-white">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="w3-text-black" aria-hiddenx="true">&times;</span>
                </button>
                <br><br>
                <div class="<%=Design.containerTitle%>">
                    <h3 class="<%=Design.textTitle%>">Renommer le niveau</h3>
                </div>
                <div class="<%=Design.container%>">
                    <br>
                    <form  action="<%=application.getContextPath()%>/L1?id=<%=level1.getId()%>" method="post" >
                        <div class="card-content">
                            <div class="form-group">
                                <p class="<%=Design.textNormal%>">Nom du niveau <star> *</star></p>
                                <input class="<%=Design.inputText%>" name="nameLevel" type="text" required="true" >
                            </div>
                        </div>
                        <button style="border-radius: 5px;" name="renameLevel" type="submit" class="<%=Design.btn%>">Ajouter</button>
                        <button style="border-radius: 5px;" type="reset" class="<%=Design.btn%>">Annuler</button>

                    </form>
                    <br>
                </div>

            </div> 
        </div>
    </div>
</div>  

<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body bg-white">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="w3-text-black" aria-hiddenx="true">&times;</span>
                </button>
                <br><br>
                <div class="<%=Design.containerTitle%>">
                    <h3 class="<%=Design.textTitle%>">Ajouter un pilote</h3>
                </div>
                <div class="<%=Design.container%>">
                    <br>
                    <form  name="f1" action="<%=application.getContextPath()%>/L1?id=<%=level1.getId()%>" method="post" >
                        <div class="card-content">
                            <div class="form-group">
                                <p class="<%=Design.textNormal%>">Type d'utilisateur <star> *</star></p>
                                <select id="idTypeUser" name="idTypeUser" class="selectpickers <%=Design.inputText%>" title="" data-size="7"   onchange="loadDoc()" required>
                                    <% List<TypeUser> listTypeUser = ServiceTypeUser.findAll();
                                        for (TypeUser typeUser : listTypeUser) {
                                            String value = typeUser.getName();
                                    %>
                                    <option class="" draggable value="<%=typeUser.getId()%>"><%=value%></option>   
                                    <%}%>
                                </select>
                            </div>
                            <p class="<%=Design.textNormal%>">Utilisateur <star> *</star></p>
                            <div id="demo"></div>
                        </div>
                        <button style="border-radius: 5px;" name="addUser" type="submit" class="<%=Design.btn%>">Ajouter</button>
                        <button style="border-radius: 5px;" type="reset" class="<%=Design.btn%>">Annuler</button>
                    </form>
                    <br>
                </div> 
            </div>
        </div>
    </div> 
</div> 

<script>
    function loadDoc() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("demo").innerHTML =
                        this.responseText;
            }
        };
        var idTypeUser = document.getElementById("idTypeUser");
        var idTypeUser = idTypeUser.options[idTypeUser.selectedIndex].value;
        xhttp.open("GET", "<%=application.getContextPath()%>/user/ajax/listUser.jsp?idTypeUser=" + idTypeUser, true);
        xhttp.send();
    }
</script>
