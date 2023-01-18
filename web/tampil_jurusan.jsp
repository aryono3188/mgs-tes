<%-- 
    Document   : tampil_jurusan
    Created on : Jun 28, 2019, 11:19:36 PM
    Author     : Haryono1409
--%>

<sql:query var="qryjurusan" dataSource="${dataSource}">
    SELECT*FROM jurusan
    WHERE kode_jurusan like'%${param.cari}%'
    OR nama_jurusan like'%${param.cari}%'
</sql:query>
    
<br><fornt color="white"> <h2> <center> Data Fakultas </center> </h2> </fornt>
    <br>
     <table bgcolor="gray" border="0" width="15%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="index1.jsp?halaman=jurusan&aksi=SIMPAN"> Tambah Jurusan </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Cari Data Jurusan : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
     
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode Jurusan</td>
                <td>Nama Jurusan</td>
                <td>Kode Fakultas</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowjurusan" items="${qryjurusan.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowjurusan[0]}</td>
                    <td valign='top'>${rowjurusan[1]}</td> 
                    <td valign='top'>${rowjurusan[2]}</td> 
                    <td align='center'>
                        <a href='aksi_jurusan?aksi=HAPUS&kode_jurusan=${rowjurusan[0]}'>Hapus</a> |
                        <a href='index1.jsp?halaman=jurusan&aksi=GANTI&kode_jurusan=${rowjurusan[0]}
                           &nama_jurusan=${rowjurusan[1]}&kode_fakultas=${rowjurusan[2]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>
