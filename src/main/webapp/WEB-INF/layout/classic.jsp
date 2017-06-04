<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>



    <link rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

    <link rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

    <script type="text/javascript"
            src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

    <script
            src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/jquery.bxslider.min.css" />" rel="stylesheet" type="text/css">
    <script src="<c:url value="/resources/jquery-3.2.1.min.js" />"></script>
    <script src="<c:url value="/resources/jquery.bxslider.min.js" />"></script>
    <script src="<c:url value="/resources/script.js" />"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:getAsString name="title" /></title>
</head>
<body>

<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>

<tilesx:useAttribute name="current"/>

            <div id="header">
                <div class="logo">HELLO FROM...</div>
                <div class="menu">
                    <a href="<spring:url value="/" />">Home</a>
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                    <a href="<spring:url value="/users.html" />">Users</a>
                    </security:authorize>

                    <a href="<spring:url value="/register.html" />">Register</a>
                    <security:authorize access="! isAuthenticated()">
                    <a href="<spring:url value="/login.html" />">Log In</a>
                    </security:authorize>
                    <security:authorize access=" isAuthenticated()">
                    <a href="<spring:url value="/account.html" />">Home account</a>


                    <a href="<spring:url value="/logout" />">LogOut</a>
                    </security:authorize>
                </div>
            </div>

<div class="banner">
    <div class="banner-text">ABBA</div>
</div>

    <tiles:insertAttribute name="body" />

    <br>
    <br>
    <center>
        <tiles:insertAttribute name="footer" />
    </center>

</div>

</body>
</html>
