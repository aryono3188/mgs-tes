<%-- 
    Document   : tampil_mahasiswa
    Created on : Jun 28, 2019, 10:22:01 PM
    Author     : Haryono1409
--%>

<sql:query var="qrymahasiswa" dataSource="${dataSource}">
    SELECT*FROM mahasiswa 
    WHERE nim like'%${param.cari}%'
    OR nama like'%${param.cari}%'
</sql:query>

<br><fornt color="white">  <h2> <center> Data Mahasiswa </center> </h2> </fornt>
    <br>
    <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="admin.jsp?halaman=mahasiswa&aksi=SIMPAN"> Tambah Mahasiswa </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
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
                <td>Action</td>
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
                    <td align='center'>
                        <a href='aksi_mahasiswa?aksi=HAPUS&nim=${rowmahasiswa[0]}'>Hapus</a> |
                        <a href='admin.jsp?halaman=mahasiswa&aksi=GANTI&nim=${rowmahasiswa[0]}
                           &nama=${rowmahasiswa[1]}&password=${rowmahasiswa[2]}
                           &tanggal_lahir=${rowmahasiswa[3]}&alamat=${rowmahasiswa[4]}
                           &jurusan=${rowmahasiswa[5]}&fakultas=${rowsiswa[6]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>

