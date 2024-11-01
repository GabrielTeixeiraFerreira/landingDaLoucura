<%@ page import="com.khita_servlet.model.Administrador" %>
<%@ page import="com.khita_servlet.model.Curso" %><%--
  Created by IntelliJ IDEA.
  User: gabrielferreira-ieg
  Date: 09/10/2024
  Time: 09:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <head>
  <title>Cursos</title>
  <link rel="stylesheet" href="../../css/tabela.css">
 </head>
    <body>
        <div class="table-content">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Thumbnail</th>
                    <th>Titulo</th>
                    <th>Duração(Sec)</th>
                    <th>Tipo</th>
                    <th>Link</th>
                </tr>
            
                <% int qtdCursos = (int) request.getAttribute("qtdCursos");
                    Curso[] cursos = (Curso[]) request.getAttribute("cursos");
                    for (int i = 0; i < qtdCursos; i++) {%>
            
                <tr>
                    <td><%= cursos[i].getId() %></td>
                    <td><img src="<%= cursos[i].getThumbnail() %>" alt="Thumbnail"></td>
                    <td><%= cursos[i].getTitulo() %></td>
                    <td><%= cursos[i].getDuracao_segundos() %></td>
                    <td><%= cursos[i].getTipo_curso().getTipo() %></td>
                    <td><%= cursos[i].getLink_video() %></td>
                </tr>
            
                <% } %>
            </table>
        </div>
    </body>
</html>
