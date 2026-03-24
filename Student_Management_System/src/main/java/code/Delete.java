package code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Delete")
public class Delete extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response) {

try{

int id = Integer.parseInt(request.getParameter("id"));

Connection con = DBConnection.getConnection();

String sql = "DELETE FROM student WHERE id=?";

PreparedStatement ps = con.prepareStatement(sql);

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect("View_Student.jsp");

}
catch(Exception e){
e.printStackTrace();
}

}

}
