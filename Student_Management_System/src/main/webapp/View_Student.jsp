<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="code.DBConnection"%>
<%@page import="java.sql.*"%>


<h2>Student List</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Cource</th>
<th>Phone</th>
<th>Delete</th>
<th>Update</th>
</tr>

<%

try{

Connection con = DBConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM student1");

while(rs.next()){

%>

<tr>
<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("cource")%></td>
<td><%=rs.getString("phone")%></td>

<td>
<a href="Delete? id=<%=rs.getInt("id")%>">Delete</a>
</td>
<td><a href="edit.jsp?id=<%=rs.getInt("id")%>">Update</a>

</td>
</tr>


<%
}

}catch(Exception e){
out.println(e);
}
%>

</table>
<br>




</body>
</html>