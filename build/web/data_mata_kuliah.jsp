<%-- 
    Document   : data_mata_kuliah
    Created on : Jun 29, 2019, 9:25:11 PM
    Author     : Haryono1409
--%>

<sql:query var="qrymata_kuliah" dataSource="${dataSource}">
    SELECT*FROM mata_kuliah
    WHERE kode_matkul like'%${param.cari}%'
    OR matkul like'%${param.cari}%'
</sql:query>
    
<br><fornt color="white"> <h2> <center> Data Mata Kuliah</center> </h2> </fornt>
    
    <form action="" method="post"> <br>
        Cari Data Mata Kuliah : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
     
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode MatKul</td>
                <td>Mata Kuliah</td>
                <td>SKS</td>
            </tr>
            
            <c:forEach var="rowmata_kuliah" items="${qrymata_kuliah.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowmata_kuliah[0]}</td>
                    <td valign='top'>${rowmata_kuliah[1]}</td> 
                    <td valign='top'>${rowmata_kuliah[2]}</td> 
                </tr>
            </c:forEach>
        </table><br><br>
        
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Mata Kuliah </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_mata_kuliah.jsp" method="post">
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

<form action="cetak_data_mata_kuliah_kode_matkul.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Kode Mata Kuliah</b>
            </td>           
             <tr>
               <td>Input Kode Matkul:</td>
               <td><input type="text" name="kode matkul" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 

