<%-- 
    Document   : tampil_fakultas
    Created on : Jun 28, 2019, 10:52:20 PM
    Author     : Haryono1409
--%>

<sql:query var="qryfakultas" dataSource="${dataSource}">
    SELECT*FROM fakultas
    WHERE kode_fakultas like'%${param.cari}%'
    OR nama_fakultas like'%${param.cari}%'
</sql:query>
    
<br><fornt color="white"> <h2> <center> Data Fakultas </center> </h2> </fornt>
    <br>
     <table bgcolor="gray" border="0" width="15%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="index1.jsp?halaman=fakultas&aksi=SIMPAN"> Tambah Fakultas </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Cari Data fakultas : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
     
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode Fakultas</td>
                <td>Nama Fakultas</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowfakultas" items="${qryfakultas.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowfakultas[0]}</td>
                    <td valign='top'>${rowfakultas[1]}</td> 
                    <td align='center'>
                        <a href='aksi_fakultas?aksi=HAPUS&kode_fakultas=${rowfakultas[0]}'>Hapus</a> |
                        <a href='index1.jsp?halaman=fakultas&aksi=GANTI&kode_fakultas=${rowfakultas[0]}
                           &nama_fakultas=${rowfakultas[1]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>

