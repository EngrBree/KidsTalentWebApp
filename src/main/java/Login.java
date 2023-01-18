

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class Login
 */@WebServlet("/Login")
public class Login extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
   
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("username");
        String password=request.getParameter("password");
        
        Connection con = null;
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		if(uname==null ||uname.equals("")) {
			session.setAttribute("Status","Invalid Email");
			dispatcher = request.getRequestDispatcher("Login.jsp");
			
			
			
		}
		if(password==null ||password.equals("")) {
			session.setAttribute("Status","Invalid password");
			dispatcher = request.getRequestDispatcher("Login.jsp");
			//dispatcher.forward(request, response);
			
			dispatcher.include(request, response);
		}


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kids?useSSL=false","root","Bree@2002!");
			PreparedStatement stmt = con.prepareStatement("select * from User where uname=? and password=?");
			stmt.setString(1, uname);
			stmt.setString(2, password);

			ResultSet rs = stmt.executeQuery();


			if (rs.next()) {
				
				session.setAttribute("username", rs.getString("uname"));
				dispatcher=request.getRequestDispatcher("Index.jsp");
				//response.sendRedirect("Index.jsp");
				

			} else {
				request.setAttribute("Status", "Failed");
				dispatcher = request.getRequestDispatcher("Login.jsp");
				
			}
			
			dispatcher.include(request, response);
			return;
			
			
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				
                    
                    if (con != null) {
                        con.close();
                    }
                    
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			
			
			
}
}
 
