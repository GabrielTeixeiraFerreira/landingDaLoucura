<%@ page import="com.khita_servlet.model.Categoria" %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../css/tabela.css" />
    <title>Categorias</title>
  </head>
  <body>

    <div class="table-content">
      <table>
        <tr>
          <th>Id</th>
          <th>Nome Categoria</th>
          <th>Nome ADM</th>
          <th>E-mail ADM</th>
        </tr>
        <% int qtdCategorias = (int) request.getAttribute("qtdCategorias");
        Categoria[] categorias = (Categoria[]) request.getAttribute("categorias");
        for (int i = 0; i < qtdCategorias; i++) {%>
        <tr>
          <td><%= categorias[i].getId() %></td>
          <td><%= categorias[i].getCategoria() %></td>
          <td><%= categorias[i].getAdm_criador().getNome_completo() %></td>
          <td><%= categorias[i].getAdm_criador().getEmail() %></td>
        </tr>
        <% } %>
      </table>
    </div>
  </body>
</html>