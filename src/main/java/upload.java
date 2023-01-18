
import dbSevlets.com.DB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 * Servlet implementation class upload
 */
@WebServlet("/upload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
maxFileSize = 1024 * 1024 * 1000, // 1 GB
maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
public class upload extends HttpServlet {
	PrintWriter out = null;
    Connection con = null;
    PreparedStatement ps = null;
    HttpSession session = null;

       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
        try {
            out = response.getWriter();
            session = request.getSession(false);
            String folderName = "uploads";
           // String uploadPath = request.getServletContext().getRealPath("") + File.separator + folderName;//for netbeans use this code
            String uploadPath = request.getServletContext().getRealPath("") + folderName;//for eclipse use this code
            File dir = new File(uploadPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            Part filePart = request.getPart("file");//Textbox value of name file.
          
            String filename = filePart.getSubmittedFileName();
            String path = folderName + File.separator + filename;
            Timestamp dateAdded= new Timestamp(System.currentTimeMillis());
            System.out.println("fileName: " + filename);
            System.out.println("Path: " + uploadPath);
            
            InputStream is = filePart.getInputStream();
            Files.copy(is, Paths.get(uploadPath + File.separator + filename), StandardCopyOption.REPLACE_EXISTING);
            
            
            try {
                con = DB.getConnection();
                System.out.println("connection done");
                String sql = "insert into upload(filename,path,dateAdded) values(?,?,?)";
                ps = con.prepareStatement(sql);
       
                ps.setString(1, filename);
                ps.setString(2, path);
                ps.setTimestamp(3, dateAdded);
                int status = ps.executeUpdate();
                if (status > 0) {
                    session.setAttribute("fileName", filename);
                    String msg = "" + filename + " File uploaded successfully...";
                    request.setAttribute("msg", msg);
                   // RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
                    //rd.forward(request, response);
                    System.out.println("File uploaded successfully...");
                    System.out.println("Uploaded Path: " + uploadPath);
                }
            } catch (SQLException e) {
                out.println("Exception: " + e);
                System.out.println("Exception1: " + e);
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    out.println(e);
                }
            }

        } catch (IOException | ServletException e) {
            out.println("Exception: " + e);
            System.out.println("Exception2: " + e);
        }
	}

}
