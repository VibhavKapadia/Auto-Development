<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<f:form action="insert" method="get" modelAttribute="register">
First Name<input type="text" name="firstname"/>
Last Name<input type="text" name="lastname"/>
User Name<input type="text" name="username"/>
Password<input type="text" name="password"/>
<input type="submit" value="submit"/>
</f:form>



</body>
</html>