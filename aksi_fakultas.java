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
public class aksi_fakultas extends HttpServlet {

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
            String kode_fakultas= request.getParameter("kode_fakultas");
            String nama_fakultas = request.getParameter("nama_fakultas");
            String cari = request.getParameter("cari");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/tes_mgs","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(kode_fakultas.equals("")||nama_fakultas.equals(""))          
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_fakultas'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into fakultas "
                        + "values('" + kode_fakultas + "','" + nama_fakultas + "')");                           
                        out.println("<script>alert('Data Fakultas berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_fakultas'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from fakultas where kode_fakultas='" + kode_fakultas + "'");
                out.println("<script>alert('Data fakultas berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_fakultas'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update fakultas set nama_fakultas='"  +nama_fakultas + "' " + "where kode_fakultas='" + kode_fakultas + "'");               
                out.println("<script>alert('Data Fakultas berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=tampil_fakultas''/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan Kode Fakultas sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;index1.jsp?halaman=fakultas&aksi=SIMPAN'/>");

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

