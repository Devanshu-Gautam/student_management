<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@page import="code.DBConnection"%>

<%

int id = Integer.parseInt(request.getParameter("id"));

Connection con = DBConnection.getConnection();

PreparedStatement ps = con.prepareStatement("SELECT * FROM student1 WHERE id=?");

ps.setInt(1,id);

ResultSet rs = ps.executeQuery();

rs.next();

%>


<form action="Update" method="post">

<input type="hidden" name="id" value="<%=rs.getInt("id")%>">

Name:
<input type="text" name="name" value="<%=rs.getString("name")%>">

Email:
<input type="text" name="email" value="<%=rs.getString("email")%>">

Course:
<input type="text" name="cource" value="<%=rs.getString("cource")%>">

Phone:
<input type="text" name="phone" value="<%=rs.getString("phone")%>">

<button type="submit">Update</button>

</form>

</body>
</html>