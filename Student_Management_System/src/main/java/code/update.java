package code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/update")
public class update extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response){

try{

int id=Integer.parseInt(request.getParameter("id"));

String name=request.getParameter("name");
String email=request.getParameter("email");
String course=request.getParameter("cource");
String phone=request.getParameter("phone");

Connection con=DBConnection.getConnection();

String sql="UPDATE student1 SET name=?,email=?,cource=?,phone=? WHERE id=?";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,course);
ps.setString(4,phone);
ps.setInt(5,id);

ps.executeUpdate();

response.sendRedirect("View_Student.jsp");

}
catch(Exception e){
e.printStackTrace();
}

}

}
