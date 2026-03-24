package code;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Add_Student
 */
@WebServlet("/Add_Student")
public class Add_Student extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Student() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			try {

			String Name = request.getParameter("name");
			String Email = request.getParameter("email");
			String Cource = request.getParameter("cource");
			String Phone = request.getParameter("phone");

			Connection connection = DBConnection.getConnection();

			String sql = "INSERT INTO student1(name,email,cource,phone) VALUES (?,?,?,?)";

			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setString(1, Name);
			ps.setString(2, Email);
			ps.setString(3, Cource);
			ps.setString(4, Phone);

			int i = ps.executeUpdate();

			if(i > 0){
				out.println("<h1 style:text-align:'center';>Student Added Successfully</h1>");
			}
			else{
				out.println("Error");
			}

			}
			catch(Exception e){
				out.println(e);
			}

			}

	}