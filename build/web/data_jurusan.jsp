<%-- 
    Document   : data_jurusan
    Created on : Jun 29, 2019, 8:22:40 PM
    Author     : Haryono1409
--%>

<sql:query var="qryjurusan" dataSource="${dataSource}">
    SELECT*FROM jurusan
    WHERE kode_jurusan like'%${param.cari}%'
    OR nama_jurusan like'%${param.cari}%'
</sql:query>
    
<br><fornt color="white"> <h2> <center> Data Jurusan </center> </h2> </fornt>
    
    <form action="" method="post"> <br>
        Cari Data Jurusan : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
     
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode Jurusan</td>
                <td>Nama Jurusan</td>
                <td>Kode Fakultas</td>
            </tr>
            
            <c:forEach var="rowjurusan" items="${qryjurusan.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowjurusan[0]}</td>
                    <td valign='top'>${rowjurusan[1]}</td> 
                    <td valign='top'>${rowjurusan[2]}</td> 
                </tr>
            </c:forEach>
        </table><br><br>
        
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Jurusan </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_jurusan.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
            <td>
                <input type="radio" name="cetak" value=""><b>Semua</b>
            </td>           
            <td>
                <input type="submit" value="Proses">
            </td>            
        </table>
    </center>
</form>  

<form action="cetak_data_jurusan_kode_jurusan.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Kode Jurusan</b>
            </td>           
             <tr>
               <td>Input Kode Jurusan:</td>
               <td><input type="text" name="kode jurusan" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 
