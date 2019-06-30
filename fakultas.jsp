<%-- 
    Document   : fakultas
    Created on : Jun 28, 2019, 10:51:49 PM
    Author     : Haryono1409
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Fakultas</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_fakultas" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Kode Fakultas</td>
                <td><input type="text" name="kode_fakultas" value="${param.kode_fakultas}"/></td>
            </tr>
            <tr> 
                <td>Nama Fakultas</td>
                <td><input type="text" name="nama_fakultas" value="${param.nama_fakultas}"/></td>
            </tr>   
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    
       
