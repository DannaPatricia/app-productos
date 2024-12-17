<%-- 
    Document   : modificarProducto
    Created on : 23 nov 2024, 17:52:02
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style2.css"/>
    </head>
    <body>
        <%
            String enviado = request.getParameter("enviarOpcion");
            if(enviado == null){
                out.print("<form action=\"menuProductos.jsp\" method=\"get\">");
                out.print("<h1>MENU PRODUCTOS</h1>");
                out.print("<div class=\"containerFormuario\">");
                out.print("<label for=\"opcion\">Selecciona opción</label>");
                out.print("<input type=\"radio\" name=\"opcion\" value=\"añadir\">Añadir producto");
                out.print("<input type=\"radio\" name=\"opcion\" value=\"borrar\">Borrar producto");
                out.print("<input type=\"radio\" name=\"opcion\" value=\"modificar\">Modificar producto");
                out.print("</div>");
                out.print("<div class=\"containerFormuario\">");
                out.print("<input type=\"submit\" value=\"Enviar\" name=\"enviarOpcion\">");
                out.print("</div>");
                out.print("</form>");
             }else{
              String opcion = request.getParameter("opcion");
              switch(opcion){
                case "añadir":
                        out.print("<form action=\"ServletProductos\" method=\"post\">");
                        out.print("<input type=\"hidden\" name=\"opcion\" value = \"añadir\">");
                        out.print("<h1>AÑADIR PRODUCTO</h1>");
                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"codigoArticulo\">Inserta Codigo</label>");
                        out.print("<input type=\"text\" name=\"codigoArticulo\">");
                        out.print("</div>");

                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"seccion\">Inserta Seccion</label>");
                        out.print("<input type=\"text\" name=\"seccion\">");
                        out.print("</div>");

                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"nombreArticulo\">Inserta Nombre al articulo</label>");
                        out.print("<input type=\"text\" name=\"nombreArticulo\">");
                        out.print("</div>");

                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"precio\">Inserta precio</label>");
                        out.print("<input type=\"number\" step=\"0.01\" name=\"precio\">");
                        out.print("</div>");

                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"fecha\">Fecha de importacion</label>");
                        out.print("<input type=\"date\" name=\"fecha\">");
                        out.print("</div>");
                        
                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"importado\">Importado?</label>");
                        out.print("<input type=\"radio\" name=\"importado\" value=\"verdadero\">Si");
                        out.print("<input type=\"radio\" name=\"importado\" value = \"falso\">No");
                        out.print("</div>");

                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"pais\">Inserta pais de origen</label>");
                        out.print("<input type=\"text\" name=\"pais\">");
                        out.print("</div>");

                        out.print("<div class=\"containerFormuario\">");
                        out.print("<input type=\"submit\" value=\"Enviar\">");
                        out.print("</div>");

                        out.print("</form>");
                    break;
                    case "modificar":
                        out.print("<form action=\"ServletProductos\" method=\"post\">");
                        out.print("<h1>MODIFICAR PRODUCTO</h1>");
                        out.print("<input type=\"hidden\" name=\"opcion\" value = \" modificar\">");
                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"codigoArticulo\">Inserta Codigo del producto a modificar</label>");
                        out.print("<input type=\"text\" name=\"codigoArticulo\">");
                        out.print("</div>");
                        out.print("<div class=\"containerFormuario\">");
                        out.print("<input type=\"submit\" value=\"Enviar\">");
                        out.print("</div>");
                        out.print("</form>");
                    break;
                    case "borrar":
                        out.print("<form action=\"ServletProductos\" method=\"post\">");
                        out.print("<h1>BORRRAR PRODUCTO</h1>");
                        out.print("<input type=\"hidden\" name=\"opcion\" value = \" borrar\">");
                        out.print("<div class=\"containerFormuario\">");
                        out.print("<label for=\"codigoArticulo\">Inserta Codigo del producto a borrar</label>");
                        out.print("<input type=\"text\" name=\"codigoArticulo\">");
                        out.print("</div>"); 
                        out.print("<div class=\"containerFormuario\">");
                        out.print("<input type=\"submit\" value=\"Enviar\">");
                        out.print("</div>");
                        out.print("</form>");
                    break;
            }
            }
        %>

    </body>
</html>
