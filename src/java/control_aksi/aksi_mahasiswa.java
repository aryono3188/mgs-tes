/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control_aksi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Haryono
 */
public class aksi_mahasiswa extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter(); 
        try {
            /* TODO output your page here. You may use following sample code. */
            String aksi = request.getParameter("aksi");
            String nim = request.getParameter("nim");
            String nama = request.getParameter("nama");
            String password = request.getParameter("password");
            String tanggal_lahir = request.getParameter("tanggal_lahir");
            String alamat = request.getParameter("alamat");
            String jurusan = request.getParameter("jurusan");
            String fakultas = request.getParameter("fakultas");
            String cari = request.getParameter("cari");
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/tes_mgs","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(nim.equals("")||nama.equals("")||password.equals("")||tanggal_lahir.equals("")
                      ||alamat.equals("")||jurusan.equals("")||fakultas.equals(""))          
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mahasiswa'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into mahasiswa "
                        + "values('" + nim + "','" + nama + "','" + password + "','"  
                        + tanggal_lahir + "','" + alamat + "','" + jurusan + "','" + fakultas + "')");             
                        out.println("<script>alert('Data Mahasiswa berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mahasiswa'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from mahasiswa where nim='" + nim + "'");
                out.println("<script>alert('Data Mahasiswa berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mahasiswa'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update mahasiswa set nama='"  + nama + "',"+ "password='" + password + "',"
                        + "tanggal_lahir='" + tanggal_lahir + "'," + "alamat='" + alamat + "'," 
                        + "jurusan='" + jurusan + "', fakultas='" + fakultas + "' "+ "where nim='" + nim + "'");                                         
                out.println("<script>alert('Data Mahasiswa berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mahasiswa'/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan NIM sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=mahasiswa&aksi=SIMPAN'/>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

