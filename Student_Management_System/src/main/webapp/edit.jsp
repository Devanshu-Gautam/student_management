<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%@page import="code.DBConnection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">

input{
width: 300px;
height: 20px;
margin-left: 50px;
margin-top: 7px;

}
button{
margin-left: 5px;
margin-top: 10px;
background-color:blue;
width:200px;
height:30px;
color:white;
border-radius:2px;

}
button:hover{
background-color: green;
color: white;
}



</style>
</head>
<body>






<%

int id = Integer.parseInt(request.getParameter("id"));

Connection con = DBConnection.getConnection();

PreparedStatement ps = con.prepareStatement("SELECT * FROM student1 WHERE id=?");

ps.setInt(1,id);

ResultSet rs = ps.executeQuery();

rs.next();

%>

<h2 style="text-align: center; font-size: 30px">Edit Student</h2>

<form action="update" method="post" style="text-align: center; border:solid; width: 500px;margin-left: 430px;height: 200px">

<input type="hidden" name="id" value="<%=rs.getInt("id")%>">

Name   :
<input type="text" name="name" value="<%=rs.getString("name")%>"><br><br>

Email  :
<input type="text" name="email" value="<%=rs.getString("email")%>"><br><br>

Course :
<input type="text" name="cource" value="<%=rs.getString("cource")%>"><br><br>

Phone  :
<input type="text" name="phone" value="<%=rs.getString("phone")%>"><br><br>

<button type="submit">Update</button>

</form>

</body>
</html>