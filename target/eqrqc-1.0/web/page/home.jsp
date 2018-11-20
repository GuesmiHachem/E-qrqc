<%-- 
    Document   : d
    Created on : 22 oct. 2018, 18:39:46
    Author     : Hachem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../../assets/__css.jsp" %>
        <style>
            /* ============================================================= */
            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .topnav1 {
                overflow: hidden;
                background-color: #333;
            }

            .topnav1 a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav1 a:hover {
                background-color: #ddd;
                color: black;
            }

            .active {
                background-color: #4CAF50;
                color: white;
            }

            .topnav1 .icon {
                display: none;
            }

            @media screen and (max-width: 600px) {
                .topnav1 a:not(:first-child) {display: none;}
                .topnav1 a.icon {
                    float: right;
                    display: block;
                }
            }

            @media screen and (max-width: 600px) {
                .topnav1.responsive {position: relative;}
                .topnav1.responsive .icon {
                    position: absolute;
                    right: 0;
                    top: 0;
                }
                .topnav1.responsive a {
                    float: none;
                    display: block;
                    text-align: left;
                }
            }
            /* ============================================================= */
            /* width */
            ::-webkit-scrollbar {
                width: 10px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: #f1f1f1; 
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #888; 
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #555; 
            }
            /* ============================================================= */

        </style>
    </head>
    <body  onload="startTime()" style="font-family: 'Roboto'" >

        <%//@include file="../include/top.jsp" %>
        <%//@include file="../include/header.jsp" %>
        <div w3-include-html="<%=application.getContextPath()%>/user/include/top.jsp"></div>
        <div w3-include-html="<%=application.getContextPath()%>/user/include/header.jsp"></div>

        <div class="topnav1  w3-margin1" id="myTopnav">
            <a href="#home" class=" bg-info w3-medium ">
                <i class="fa fa-home w3-medium w3-text-light-gray "></i>
                Home
            </a>
            <a href="#contact" class="w3-medium">Contact11</a>
            <a href="#about" class="w3-medium">About</a>
            <a href="#about" class="w3-medium">About</a>       
            <a href="#about" class="w3-medium w3-red w3-round w3-right">
                <i class="fa fa-power-off w3-text-white w3-medium"></i> 
            </a>    
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <%//@include file="../include/__sidebar.jsp" %>
                </div>
                <div class="col-lg-9">
                    <%//@include file="../content/__home.jsp" %>
                </div>
            </div>
        </div>
        <%@include file="../../assets/__js.jsp" %>
        <script type="text/javascript">

            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav1") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav1";
                }
            }
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
