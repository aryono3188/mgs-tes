<%-- 
    Document   : index
    Created on : Jun 28, 2019, 6:40:42 PM
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
        <link rel="stylesheet" type="text/css" href="config/kampus.css" media="screen"/>
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

                <marquee behavior="left">
                    Selamat Datang Di Sistem Informasi Akademik Kampus Berbasis Web
                    &nbsp &nbsp &nbsp &nbsp &nbsp;
                    Registrasi pembayaran Semester Genap sudah Bisa Dilakukan &nbsp &nbsp &nbsp &nbsp &nbsp;
                    Keterlambatan Diluar Waktu Bisa Dikenakan Sangsi DO &nbsp &nbsp &nbsp &nbsp &nbsp;
                    Terimakasih &nbsp &nbsp &nbsp &nbsp &nbsp;
                </marquee> 

            </div><%-- akhir dari menu atas --%>

            <div id="content"><%-- awal dari isi content --%>
                <div class="right"><%-- awal dari content sebelah kanan web --%>    

                    <table bgcolor="pink" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                        <tr class="head">
                        <thead>
                        <td>
                        <center><h2>LOG IN</h2></center>
                        </td>
                        </thead>
                        </tr> 
                    </table>
                    <table widht="100%">
                        <tr>
                            <td valign="top" widht="0%">
                            <td valign="top" widht="150%">                           
                                <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                    <tr class="head"></tr>                                  
                                    <ul>                                                                                                                                                          
                                        <tr>
                                        <left><a href="login.jsp"><img src="image/topi_wisuda2.jpg"/></a></left>
                                        </tr>
                                        <tr>
                                        <center><td bgcolor="pink"><h3><li><a href="login.jsp">Klik Gambar/Disini</a></li></h3></td></center>
                                        </tr>
                                    </ul>
                                </table>  
                            </td>    
                            </td>
                        </tr>
                    </table>
                </div><%-- akhir dari content sebelah kanan web --%>    

                <div class="left"> <%-- awal dari content sebelah kiri web --%>                   
                    <p align="center"><img src="image/topi_wisuda.jpg" style="float:contour; margin:0 10px 10px 0;" width="50%" height="40%"/>    

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
