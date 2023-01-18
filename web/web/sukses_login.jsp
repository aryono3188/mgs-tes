<%-- 
    Document   : sukses_login
    Created on : Jun 28, 2019, 9:08:25 PM
    Author     : Haryono1409
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("nim");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tes_mgs",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from mahasiswa where nim='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("admin.jsp");
    } else {
        out.println("Login Tidak Berhasil <a href='login.jsp'>silahkan coba lagi</a>");
    }
%>