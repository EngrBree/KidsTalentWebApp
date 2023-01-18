

<%@page import="dbSevlets.com.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload list</title>
<style>
            body{
            background-image:url("img/wall.jpg");
            
            }
            
            
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>
        



</head>
<body>
<center>

<h1>You can download the previous to check your kids progress</h1>
</center>
<br><br><br>
    <center>
        <%!
            Connection con = null ;
        PreparedStatement ps=null;
            ResultSet rs = null;
        %>
 <table border="2">
            <tr>
                <th>id</th>
            
                <th>File Name</th>
                <th>File Path</th>
                <th>Added Date</th>
                <th>Download</th>
            </tr>
            <%
                con = DB.getConnection();
            String sql = "select* from upload";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getTimestamp(4)%></td>
                <td><a href="Download?fileName=<%=rs.getString(2)%>">Download</a></td>
            </tr><%
            }
            %>
            
        </table><br>
        <a href="UPDRAFT.jsp">Uploads</a>
    </center>
</body>
</html>