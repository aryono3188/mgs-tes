<%-- 
    Document   : index1
    Created on : Jun 28, 2019, 10:10:29 PM
    Author     : Haryono1409
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var="dataSource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/tes_mgs"
                   user="root" password=""/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistem Informasi Akademik Kampus</title>
        <link rel="stylesheet" type="text/css" href="config/kampus.css" media="screen" />
        <script type="text/javascript" src="config/setting.js"></script>
    </head>
    <body bgcolor=lightblue>
        <%--awal dari halaman web--%>

        <div id="wrap">
           <div id="header"><%--awal header--%>
                <img src="image/topi_wisuda.jpg">
                <%--gambar silahkan masukan logo --%>
                <nobr>
                    <h1><center>Sistem Informasi Akademik</center></h1>
                    <h1><center>Kampus</center></h1>
                    <h1><center>Berbasis Web</center></h1>
                </nobr>               
            </div><%--akhir dari header--%>

            <div id="menu"><%--awal dari menu atas --%>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp">Logout</a></li>
                </ul>
            </div><%-- akhir dari menu atas --%>

            <div id="content"><%-- awal dari isi content --%>
                <div class="right"><br><%-- awal dari content sebelah kanan web --%> 
            <center>
                <table widht="100%">
                    <tr>
                        <td valign="top" widht="0%">
                        <td valign="top" widht="150%">                           
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head">
                                    <thead>
                                        <td>
                                            <h2>Master Data</h2>
                                        </td>
                                    </thead>
                                </tr>  
                                    <ul>
                                        <tr>
                                             <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=tampil_mahasiswa">Mahasiswa</a></li></h3></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=tampil_fakultas">Fakultas</a></li></h3></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=tampil_jurusan">Jurusan</a></li></h3></td>                   
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=tampil_mata_kuliah">Mata Kuliah</a></li></h3></td>                   
                                        </tr>    
                                    </ul>
                            </table>                          
                        </td>    
                        </td>
                    </tr>
                </table>
            </center>    
            
            <center>
            <table widht="100%">
                    <tr>
                        <td valign="top" widht="0%">
                        <td valign="top" widht="150%">                           
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head">
                                    <thead>
                                        <td>
                                            <h2>Cetak Data</h2>
                                        </td>
                                    </thead>
                                </tr>  
                                    <ul>
                                        <tr>
                                             <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=data_mahasiswa">Cetak Mahasiswa</a></li></h3></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=data_fakultas">Cetak Fakultas</a></li></h3></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=data_jurusan">Cetak Jurusan</a></li></h3></td>                   
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="admin.jsp?halaman=data_mata_kuliah">Cetak Mata Kuliah</a></li></h3></td>                   
                                        </tr> 
                                    </ul>
                            </table>                          
                        </td>    
                        </td>
                    </tr>
                </table>
            </center>    
            </div><%-- akhir dari content sebelah kanan web --%>    

                <div class="left"> <%-- awal dari content sebelah kiri web --%> 
                <table width="100%">
                    <tr>
                        <td valign="top" width="110%">
                        <%-- isi dari content sebelah kanan --%>
                            <c:choose>  
                                <c:when test="${param.halaman=='mahasiswa'}">   
                                    <%@include file="mahasiswa.jsp"%>
                                </c:when> 
                                <c:when test="${param.halaman=='tampil_mahasiswa'}">   
                                    <%@include file="tampil_mahasiswa.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='fakultas'}">   
                                    <%@include file="fakultas.jsp"%>
                                </c:when> 
                                <c:when test="${param.halaman=='tampil_fakultas'}">   
                                    <%@include file="tampil_fakultas.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='jurusan'}">   
                                    <%@include file="jurusan.jsp"%>
                                </c:when> 
                                <c:when test="${param.halaman=='tampil_jurusan'}">   
                                    <%@include file="tampil_jurusan.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='mata_kuliah'}">   
                                    <%@include file="mata_kuliah.jsp"%>
                                </c:when> 
                                <c:when test="${param.halaman=='tampil_mata_kuliah'}">   
                                    <%@include file="tampil_mata_kuliah.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='data_mahasiswa'}">   
                                    <%@include file="data_mahasiswa.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='data_fakultas'}">   
                                    <%@include file="data_fakultas.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='data_jurusan'}">   
                                    <%@include file="data_jurusan.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='data_mata_kuliah'}">   
                                    <%@include file="data_mata_kuliah.jsp"%>
                                </c:when>
                                <c:otherwise>
                                    <%@include file="home.jsp" %>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>      
                </table>    
                                                     
                <div class="footer"> <%--awal dari content footer web --%>
                    support by  <a href="">Junior Programmer Mahasiswa Program Study Sistem Informasi Akuntansi BSI MARGONDA DEPOK</a>,
                                <a href="">Copyright &copy; 28 Juni 2019 by Haryono. – All Right Reserved</a>                                    
                                <br>
                                <%=new java.util.Date()%>
                </div>
                </div>
                    <div style="clear:both;"> 
                    </div>
            </div><%--akhir dari isi content --%>
        </div><%--akhir dari halaman web --%>                                                
    </body>
</html>
