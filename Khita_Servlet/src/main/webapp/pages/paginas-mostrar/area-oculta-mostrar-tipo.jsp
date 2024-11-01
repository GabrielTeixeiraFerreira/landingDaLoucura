<%@ page import="com.khita_servlet.model.TipoCurso" %>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../css/tabela.css" />
    <title>Tipos de curso</title>
  </head>
  <body>
    <div class="table-content">
        <table>
          <tr>
            <th>Id</th>
            <th>Tipo de curso</th>
          </tr>
          <% int qtdTipos = (int) request.getAttribute("qtdTipos");
          TipoCurso[] tiposCurso = (TipoCurso[]) request.getAttribute("tiposCurso");
          for (int i = 0; i < qtdTipos; i++) {%>
          <tr>
            <td><%= tiposCurso[i].getId() %></td>
            <td><%= tiposCurso[i].getTipo() %></td>
          </tr>
          <% } %>
        </table>
    </div>
  </body>
</html>
