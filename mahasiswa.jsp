<%-- 
    Document   : mahasiswa
    Created on : Jun 28, 2019, 8:53:35 PM
    Author     : Haryono1409
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Mahasiswa</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_mahasiswa" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">NIM</td>
                <td><input type="text" name="nim" value="${param.nim}"/></td>
            </tr>
            <tr> 
                <td>Nama Mahasiswa</td>
                <td><input type="text" name="nama" value="${param.nama}"/></td>
            </tr>
            <tr> 
                <td>Password</td>
                <td><input type="text" name="password" value="${param.password}"/></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td>
                <td><input type="date" name="tanggal_lahir" value="${param.tanggal_lahir}"/></td> 
            </tr>
            <tr>
                <td>Alamat</td>
                <td><input type="text" name="alamat" value="${param.alamat}"/></td> 
            </tr>     
             <tr>
                <td>Jurusan</td>
                <td><input type="text" name="jurusan" value="${param.jurusan}"/></td> 
            </tr>
            <tr>
                <td>Fakultas</td>
                <td><input type="text" name="fakultas" value="${param.fakultas}"/></td> 
            </tr>
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    