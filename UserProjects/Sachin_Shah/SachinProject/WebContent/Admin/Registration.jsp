<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/Registration" method="get">
<input type='hidden' name='flag' value='insert'>
Country:-<select name='Country'>
<option value='abc'>ABC</option>
</select><br>
State:-<select name='State'>
<option value='abc'>ABC</option>
</select><br>
City:-<select name='City'>
<option value='abc'>ABC</option>
</select><br>
<input type='submit'>
</form>
</body>
</html>