<%-- 
    Document   : jurusan
    Created on : Jun 28, 2019, 11:19:16 PM
    Author     : Haryono1409
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Jurusan</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_jurusan" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Kode Jurusan</td>
                <td><input type="text" name="kode_jurusan" value="${param.kode_jurusan}"/></td>
            </tr>
            <tr> 
                <td>Nama Jurusan</td>
                <td><input type="text" name="nama_jurusan" value="${param.nama_jurusan}"/></td>
            </tr>   
            <tr> 
                <td>Kode Fakultas</td>
                <td><input type="text" name="kode_fakultas" value="${param.kode_fakultas}"/></td>
            </tr> 
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    
       

