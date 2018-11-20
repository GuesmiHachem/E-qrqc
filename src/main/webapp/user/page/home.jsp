<%-- 
    Document   : overview
    Created on : 16 juin 2018, 19:39:43
    Author     : Hachem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../../assets/__css.jsp" %>
        <%@include file="../include/__langue.jsp" %>
    </head>

    <body onload="startTime()">

        <%//@include file="../include/top.jsp" %>
        <%//@include file="../include/header.jsp" %>
        <div w3-include-html="<%=application.getContextPath()%>/user/include/top.jsp"></div>
        <div w3-include-html="<%=application.getContextPath()%>/user/include/header.jsp"></div>

        <div class="container-fluid">
            <div class="row mb-3"></div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="card bg-light mb-3" >
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <%//@include file="../include/__sidebar.jsp" %>
                        </div>
                    </div>

                </div>
                <div class="col-lg-9">
                    <div class="card bg-light mb-3" >
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <%@include file="../content/__home.jsp" %>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <%@include file="../../assets/__js.jsp" %>
        <script type="text/javascript">

            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }

        </script>
        <script type="text/javascript">

            $(document).ready(function () {
                demo.initOverviewDashboard();
                demo.initCirclePercentage();

                $('#datatables1').DataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                    responsive: true,
                    language: {
                        search: "_INPUT_",
                        searchPlaceholder: "Search records",
                    },
                });

                $('#datatables2').DataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                    responsive: true,

                    language: {
                        search: "_INPUT_",
                        searchPlaceholder: "Search records",
                    },
                });

                $('#datatables3').DataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                    responsive: true,

                    language: {
                        search: "_INPUT_",
                        searchPlaceholder: "Search records",
                    },
                });

                $().ready(function () {
                    demo.initFormExtendedDatetimepickers();
                });

                $('.menu.item').tab();

            });
        </script>

        <script>
            function includeHTML() {
                var z, i, elmnt, file, xhttp;
                /*loop through a collection of all HTML elements:*/
                z = document.getElementsByTagName("*");
                for (i = 0; i < z.length; i++) {
                    elmnt = z[i];
                    /*search for elements with a certain atrribute:*/
                    file = elmnt.getAttribute("w3-include-html");
                    if (file) {
                        /*make an HTTP request using the attribute value as the file name:*/
                        xhttp = new XMLHttpRequest();
                        xhttp.onreadystatechange = function () {
                            if (this.readyState == 4) {
                                if (this.status == 200) {
                                    elmnt.innerHTML = this.responseText;
                                }
                                if (this.status == 404) {
                                    elmnt.innerHTML = "Page not found.";
                                }
                                /*remove the attribute, and call this function once more:*/
                                elmnt.removeAttribute("w3-include-html");
                                includeHTML();
                            }
                        }
                        xhttp.open("GET", file, true);
                        xhttp.send();
                        /*exit the function:*/
                        return;
                    }
                }
            }
            includeHTML();
        </script>
    </body>

</html>

