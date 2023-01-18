<%-- 
    Document   : tampil_mata_kuliah
    Created on : Jun 28, 2019, 11:43:46 PM
    Author     : Haryono1409
--%>

<sql:query var="qrymata_kuliah" dataSource="${dataSource}">
    SELECT*FROM mata_kuliah
    WHERE kode_matkul like'%${param.cari}%'
    OR matkul like'%${param.cari}%'
</sql:query>
    
<br><fornt color="white"> <h2> <center> Data Mata Kuliah</center> </h2> </fornt>
    <br>
     <table bgcolor="gray" border="0" width="15%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="admin.jsp?halaman=mata_kuliah&aksi=SIMPAN"> Tambah Mata Kuliah </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Cari Data Mata Kuliah : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
     
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode MatKul</td>
                <td>Mata Kuliah</td>
                <td>SKS</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowmata_kuliah" items="${qrymata_kuliah.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowmata_kuliah[0]}</td>
                    <td valign='top'>${rowmata_kuliah[1]}</td> 
                    <td valign='top'>${rowmata_kuliah[2]}</td> 
                    <td align='center'>
                        <a href='aksi_mata_kuliah?aksi=HAPUS&kode_matkul=${rowmata_kuliah[0]}'>Hapus</a> |
                        <a href='admin.jsp?halaman=mata_kuliah&aksi=GANTI&kode_matkul=${rowmata_kuliah[0]}
                           &matkul=${rowmata_kuliah[1]}&sks=${rowmata_kuliah[2]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>
