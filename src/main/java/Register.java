

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class Register
 */
@WebServlet("/reg")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    //public Register() {
        //super();
        // TODO Auto-generated constructor stub
    //}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String kid=request.getParameter("kid");
		String age=request.getParameter("age");
		String phone=request.getParameter("contact");
		String password=request.getParameter("pass");
		String repass=request.getParameter("re_pass");
		
		Connection con = null;
		RequestDispatcher reqDispatcher = null;
		
		if(uname==null ||uname.equals("")) {
			request.setAttribute("status","invalid userName");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
			
		}
		if(email==null ||email.equals("")) {
			request.setAttribute("status","invalid use Email");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
			
		}
		if(kid==null ||kid.equals("")) {
			request.setAttribute("status","invalid Kids Name");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
			
		}
		if(age==null ||age.equals("")) {
			request.setAttribute("status","invalid Kids age");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
			
		}

		if(phone==null ||phone.equals("")) {
			request.setAttribute("status","Phone number");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
			
		}
		else if(phone.length()>10) {
			request.setAttribute("status","invalid phone length");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
		}
		if(password==null ||password.equals("")) {
			request.setAttribute("status","invalid password");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
		}
		else if(!password.equals(repass)){
		
			request.setAttribute("status","invalidconfirmPass");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
		}
		
		/**else if(age.valueOf(0)>18) {
			request.setAttribute("status","invalid phone length");
			reqDispatcher = request.getRequestDispatcher("Login.jsp");
			reqDispatcher.forward(request, response);
			
		}*/

			

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kids?useSSL=false", "root", "Bree@2002!");
			if(con!=null) {
			PreparedStatement statement = con.prepareStatement("insert into User(uname, email,kid,age,phone,password,repass) values (?,?,?,?,?,?,?)");
			statement.setString(1, uname);
			statement.setString(2, email);
			statement.setString(3, kid);
			statement.setString(4, age);
			statement.setString(5, phone); 
			statement.setString(6, password);
			statement.setString(7, repass);
			int rowCount = statement.executeUpdate();
			

			reqDispatcher = request.getRequestDispatcher("Login.jsp");

			if (rowCount>0) {
				request.setAttribute("status", "Success");

			} else {
				request.setAttribute("status", "failed");
				
			}

			reqDispatcher.forward(request, response);

		} 
		}
		catch (Exception e) {
			e.printStackTrace();
			
		}
	
		finally {
			try {
				
                    con.close();

				
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace()	;}}}
			
		
	}
	
	


