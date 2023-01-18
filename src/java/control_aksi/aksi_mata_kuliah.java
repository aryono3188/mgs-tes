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
 * @author Haryono1409
 */
public class aksi_mata_kuliah extends HttpServlet {

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
            String kode_matkul= request.getParameter("kode_matkul");
            String matkul = request.getParameter("matkul");
            String sks = request.getParameter("sks");
            String cari = request.getParameter("cari");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/tes_mgs","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(kode_matkul.equals("")||matkul.equals("")||sks.equals(""))          
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mata_kuliah'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into mata_kuliah "
                        + "values('" + kode_matkul + "','" + matkul + "','" + sks + "')");             
                        out.println("<script>alert('Data Mata Kuliah berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mata_kuliah'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from mata_kuliah where kode_matkul='" + kode_matkul + "'");
                out.println("<script>alert('Data Mata Kuliah berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mata_kuliah'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update mata_kuliah set matkul='"  + matkul + "', sks='" 
                        + sks + "' " + "where kode_matkul='" + kode_matkul + "'");               
                out.println("<script>alert('Data Mata Kuliah berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_mata_kuliah''/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan Kode Mata Kuliah sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=mata_kuliah&aksi=SIMPAN'/>");

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
