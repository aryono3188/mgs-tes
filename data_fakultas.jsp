<%-- 
    Document   : data_fakultas
    Created on : Jun 29, 2019, 7:21:41 PM
    Author     : Haryono1409
--%>

<sql:query var="qryfakultas" dataSource="${dataSource}">
    SELECT*FROM fakultas
    WHERE kode_fakultas like'%${param.cari}%'
    OR nama_fakultas like'%${param.cari}%'
</sql:query>
    
<br><fornt color="white"> <h2> <center> Data Fakultas </center> </h2> </fornt>
    
    <form action="" method="post"> <br>
        Cari Data fakultas : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
     
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode Fakultas</td>
                <td>Nama Fakultas</td>
            </tr>
            
            <c:forEach var="rowfakultas" items="${qryfakultas.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowfakultas[0]}</td>
                    <td valign='top'>${rowfakultas[1]}</td> 
                </tr>
            </c:forEach>
        </table><br><br>
        
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Fakultas </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_fakultas.jsp" method="post">
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

<form action="cetak_data_fakultas_kode_fakultas.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Kode Fakultas</b>
            </td>           
             <tr>
               <td>Input Kode Fakultas:</td>
               <td><input type="text" name="kode fakultas" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 