<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/ABC_Test_Form1" method="get">
<input type='hidden' name='flag' value='insert'>
Username:-<input type='text' name='Username' value='Username'><br>
Password:-<input type='password' name='Password' value='Password'><br>
Email:-<input type='email' name='Email' value='Email'><br>
Male :-<input type='radio' name='Gender' value='Male'><br>
Female :-<input type='radio' name='Gender' value='Female'><br>
Cricket :-<input type='checkbox' name='Hobbies' value='Cricket'><br>
Football :-<input type='checkbox' name='Hobbies' value='Football'><br>
Reading :-<input type='checkbox' name='Hobbies' value='Reading'><br>
Address:-<textarea name='Address'></textarea>
<br>
<input type='reset' value='Reset'><br>
Birthday:-<input type='date' name='Birthday' value='Birthday'><br>
<input type='submit'>
</form>
</body>
</html>