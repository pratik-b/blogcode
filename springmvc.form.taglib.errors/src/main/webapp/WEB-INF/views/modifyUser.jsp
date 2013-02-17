<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>"/>
        <title>Form Binding - Errors</title>
    </head>
    <body>
        <h1>User information</h1>
        <form:form action="/errors/modifyUser" method="POST" commandName="user">
        	<table>
			    <tr>
			        <td><form:label path="firstName">First Name</form:label></td>
			        <td>
			        	<form:input path="firstName" /><br/>
			        	<form:errors path="firstName" class="errors" />
			        </td>
			    </tr>
			    <tr>
			        <td><form:label path="lastName">Last Name</form:label></td>
			        <td>
			        	<form:input path="lastName" /> <br/>
			        	<form:errors path="lastName" class="errors" />
			        </td>
			    </tr>
			    <tr>
			        <td><form:label path="password">Password</form:label></td>
			        <td>
			        	<form:password path="password" /><br/>
			        	<form:errors path="password" class="errors" />
			        </td>
			    </tr>
			    <tr>
			        <td><form:label path="repassword">Retype Password</form:label></td>
			        <td><form:password path="repassword" /></td>
			    </tr>
			    <tr>
			        <td colspan="2">
			            <input type="submit" value="Update" />
			        </td>
			    </tr>
			</table>			    
        </form:form>
    </body>
</html>
