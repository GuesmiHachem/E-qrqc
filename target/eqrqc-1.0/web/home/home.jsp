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

    </head>

    <body >
        <%@include file="../include/top.jsp" %>
        <%@include file="../include/header.jsp" %>



        <div class="container-fluid">
            <div class="row mb-3"></div>
            <div class="row">
                <div class="col-lg-10">
                    <%@include file="__home.jsp" %>
                </div>
                <div class="col-lg-2">
                    <%@include file="../include/left.jsp" %>
                </div>
            </div>
        </div>
    </body>
    <%@include file="../include/__js.jsp" %>
    <script type="text/javascript" src="<%=application.getContextPath()%>/assets/js/demo.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            startTime();
            $('table.display').DataTable({
                responsive: true,
                select: false
            });

        });
    </script>
</html>


<%    } else {
        response.sendRedirect(application.getContextPath());
    }
%>
