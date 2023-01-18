<%-- 
    Document   : mata_kuliah
    Created on : Jun 28, 2019, 11:43:16 PM
    Author     : Haryono1409
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Mata Kuliah</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_mata_kuliah" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Kode Mata Kuliah</td>
                <td><input type="text" name="kode_matkul" value="${param.kode_matkul}"/></td>
            </tr>
            <tr> 
                <td>Mata Kuliah</td>
                <td><input type="text" name="matkul" value="${param.matkul}"/></td>
            </tr>   
            <tr> 
                <td>SKS</td>
                <td><input type="text" name="sks" value="${param.sks}"/></td>
            </tr> 
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    
       
