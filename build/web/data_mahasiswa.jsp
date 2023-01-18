<%-- 
    Document   : data_mahasiswa
    Created on : Jun 29, 2019, 3:27:12 PM
    Author     : Haryono1409
--%>

<sql:query var="qrymahasiswa" dataSource="${dataSource}">
    SELECT*FROM mahasiswa 
    WHERE nim like'%${param.cari}%'
    OR nama like'%${param.cari}%'
</sql:query>

<br><fornt color="white">  <h2> <center> Data Mahasiswa </center> </h2> </fornt>
    
    <form action="" method="post"> <br>
        Cari Data Mahasiswa : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
    
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>NIM</td>
                <td>Nama Siswa</td>
                <td>Password</td>
                <td>Tanggal Lahir</td>
                <td>Alamat</td>
                <td>Jurusan</td>
                <td>Fakultas</td>
            </tr>
            
            <c:forEach var="rowmahasiswa" items="${qrymahasiswa.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowmahasiswa[0]}</td>
                    <td valign='top'>${rowmahasiswa[1]}</td>
                    <td valign='top' align="center">${rowmahasiswa[2]}</td>
                    <td valign='top' align="center">${rowmahasiswa[3]}</td>
                    <td valign='top' align="center">${rowmahasiswa[4]}</td>   
                    <td valign='top' align="center">${rowmahasiswa[5]}</td>
                    <td valign='top' align="center">${rowmahasiswa[6]}</td> 
                </tr>
            </c:forEach>
        </table><br><br>
        
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Mahasiswa </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_mahasiswa.jsp" method="post">
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
        
<form action="cetak_data_mahasiswa_nama_mahasiswa.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Nama Mahasiswa</b>
            </td>           
             <tr>
               <td>Input Nama Mahasiswa:</td>
               <td><input type="text" name="nama mahasiswa" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 
