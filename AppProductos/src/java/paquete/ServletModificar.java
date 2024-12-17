/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package paquete;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Administrator
 */
public class ServletModificar extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletModificar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletModificar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ConexionProductos conexion = new ConexionProductos();
            String codigoArticulo = request.getParameter("codigoArticulo");
            String seccion = request.getParameter("seccion");
            String nombreArticulo = request.getParameter("nombreArticulo");
            String precio = request.getParameter("precio");
            String fecha = request.getParameter("fecha");
            String importado = request.getParameter("importado");
            String pais = request.getParameter("paisDeOrigen");
            fecha = convertirFormatoFecha(fecha);
//            if (compruebaValores(seccion, nombreArticulo, precio, fecha, importado, pais)) {
                conexion.modificarProducto(codigoArticulo, seccion, nombreArticulo, precio, fecha, importado, pais); 
//            }
            conexion.cerrarConexion();
            response.sendRedirect("menuProductos.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
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

    public String convertirFormatoFecha(String fechaOriginal) throws ParseException {
        // Define los formatos de entrada y salida
        SimpleDateFormat formatoEntrada = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat formatoSalida = new SimpleDateFormat("dd/MM/yy");
        // Convierte la fecha de String a Date usando el formato de entrada
        Date fecha = formatoEntrada.parse(fechaOriginal);
        // Formatea la fecha usando el formato de salida y la devuelve
        return formatoSalida.format(fecha);
    }

    public boolean compruebaValores(String seccion, String nombreArticulo, String precio, String fecha, String importado, String pais) {
        ArrayList<String> valores = new ArrayList<String>();
        valores.add(seccion);
        valores.add(nombreArticulo);
        valores.add(precio);
        valores.add(fecha);
        valores.add(importado);
        valores.add(pais);
        for (String valor : valores) {
            if (valor == null) {
                return true;
            }
        }
        return true;
    }
}
