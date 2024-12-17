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
public class ServletProductos extends HttpServlet {

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
            out.println("<title>Servlet ServletProductos</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletProductos at " + request.getContextPath() + "</h1>");
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
            String opcion = request.getParameter("opcion");
            opcion = opcion.trim().toLowerCase();
            if (opcion != null) {
                String codigo = request.getParameter("codigoArticulo");
                switch (opcion) {
                    case "añadir":
                        String seccion = request.getParameter("seccion");
                        String nombreArticulo = request.getParameter("nombreArticulo");
                        String precio = request.getParameter("precio");
                        String fecha = request.getParameter("fecha");
                        fecha = convertirFormatoFecha(fecha);
                        String importado = request.getParameter("importado");
                        String pais = request.getParameter("pais");

                        if (conexion.añadirProducto(codigo, seccion, nombreArticulo, precio, fecha, importado, pais)) {
                            response.sendRedirect("menuProductos.jsp");
                            conexion.cerrarConexion();
                        }
                        break;
                    case "modificar":
                        if (conexion.compruebaCodigo(codigo)) {
                            mostrarModificar(request, response, codigo, conexion);
                        } else {
                            response.sendRedirect("menuProductos.jsp");
                            conexion.cerrarConexion();
                        }
                        break;
                    case "borrar":
                        if (conexion.compruebaCodigo(codigo)) {
                            conexion.borrarProducto(codigo);
                        }
                        conexion.cerrarConexion();
                        response.sendRedirect("menuProductos.jsp");

                        break;

                    default:
                        out.print(" NINGUNO");
                }
            } else {
                response.sendRedirect("menuProductos.jsp");
                conexion.cerrarConexion();
            }
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

    public void mostrarModificar(HttpServletRequest request, HttpServletResponse response, String codigo, ConexionProductos conexion)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        ArrayList<String> valores = conexion.devuelveValores(codigo);
        try (PrintWriter out = response.getWriter()) {
            out.print("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "    <head>\n"
                    + "        <title>TODO supply a title</title>\n"
                    + "        <meta charset=\"UTF-8\">\n"
                    + "        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                    + "        <link rel=\"stylesheet\" href=\"Style2.css\"/>\n"
                    + "    </head>\n"
                    + "    <body>\n"
                    + "        <form action=\"ServletModificar\" method = \"post\">\n"
                    + "            <h1>MODIFICAR PRODUCTO</h1>\n"
                    + "                <input type=\"hidden\" name=\"codigoArticulo\" value=\"" + valores.get(0) + "\">\n"
                    + "            <div class = \"containerFormuario\">\n"
                    + "                <label for = \"seccion\">Seccion</label>\n"
                    + "                <input type=\"text\" name=\"seccion\" value=\"" + valores.get(1) + "\">\n"
                    + "            </div>\n"
                    + "            <div class = \"containerFormuario\">\n"
                    + "                <label for = \"nombreArticulo\">Nombre articulo</label>\n"
                    + "                <input type=\"text\" name=\"nombreArticulo\" value=\"" + valores.get(2) + "\">\n"
                    + "            </div>\n"
                    + "            <div class = \"containerFormuario\">\n"
                    + "                <label for = \"precio\">Precio</label>\n"
                    + "                <input type=\"number\" name=\"precio\" value=\"" + valores.get(3) + "\">\n"
                    + "            </div>\n"
                    + "            <div class = \"containerFormuario\">\n"
                    + "                <label for = \"fecha\">Fecha</label>\n"
                    + "                <input type=\"date\" name=\"fecha\" value=\"" + valores.get(4) + "\">\n"
                    + "            </div>\n"
                    + "            <div class = \"containerFormuario\">\n"
                    + "                <label for = \"importado\">Importado?</label>\n"
                    + "                <input type=\"radio\" name=\"importado\" value = \"verdadero\" " + (valores.get(5).equals("VERDADERO") ? "checked" : "") + ">Si\n"
                    + "                <input type=\"radio\" name=\"importado\" value = \"falso\" " + (valores.get(5).equals("FALSO") ? "checked" : "") + ">No\n"
                    + "            </div>\n"
                    + "            <div class = \"containerFormuario\">\n"
                    + "                <label for = \"paisDeOrigen\">Pais de Origen</label>\n"
                    + "                <input type=\"text\" name=\"paisDeOrigen\" value=\"" + valores.get(6) + "\">\n"
                    + "            </div>\n"
                    + "            <div class = \"containerFormuario\">\n"
                    + "                <input type=\"submit\" value = \"Modificar\">\n"
                    + "            </div>\n"
                    + "        </form>\n"
                    + "    </body>\n"
                    + "</html>\n"
                    + "");

        }
    }

}
