<%-- 
    Document   : overview
    Created on : 16 juin 2018, 19:39:43
    Author     : Hachem
--%>

<%
    User userPage = (User) session.getAttribute("user");
    if (userPage != null) {
%>

<!doctype html>
<html lang="en">
    <head>
        <%@include file="../include/__langue.jsp" %>
        <%@include file="../include/__css.jsp" %>
        <style>
            #ex1Slider .slider-selection {
                background: #BABABA;
            }

            .tooltip1
            {
                text-decoration:none;
                position:relative;
            }


            .tooltip1 div
            {
                display:none;

                -moz-border-radius:6px;
                -webkit-border-radius:6px;
                border-radius:6px;
                color:black;
                background:white; 
            }


            .tooltip1:hover div
            {
                display:block;
                position:absolute;
                top:0;
                left:0;
                z-index:1000;
                width:400px;
                height:300px;
                max-width:600px;
                min-height:300px;
                margin-top:32px;
                margin-left:32px;
                overflow:hidden;
                padding:8px;
            }

        </style>
    </head>

    <body onload="init();">
        <div class="wrapper">
            <%@include file="../include/__sidebar.jsp" %>

            <div class="main-panel" >

                <%@include file="../include/__nav.jsp" %>
                <%@include file="../content/__problem_2.jsp" %>
                <%@include file="../include/__footer.jsp" %>
            </div>
        </div>

    </body>
    <%@include file="../include/__js.jsp" %>

    <script type="text/javascript">
        $().ready(function () {
            demo.initFormExtendedDatetimepickers();

        });

        var slider = new Slider('#ex1', {
            formatter: function (value) {
                return 'Current value: ' + value;
            }
        });


    </script>

</html>

<%    } else {
        response.sendRedirect(application.getContextPath());
    }
%>

