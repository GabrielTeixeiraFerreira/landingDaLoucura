<%@ page import="com.khita_servlet.model.Categoria" %>
<%@ page import="com.khita_servlet.model.Usuario" %>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../css/tabela.css" />
    <title>Usuários</title>
  </head>
  <body>

    <div class="table-content">
      <table>
        <tr>
          <th>Id</th>
          <th>Nome</th>
          <th>E-mail</th>
          <th>Tipo de usuário</th>
          <th>Premium</th>
        </tr>
        <% int qtdUsuarios = (int) request.getAttribute("qtdUsuarios");
        Usuario[] usuarios = (Usuario[]) request.getAttribute("usuarios");
        for (int i = 0; i < qtdUsuarios; i++) {%>
        <tr>
          <td><%= usuarios[i].getId() %></td>
          <td><%= usuarios[i].getNome() %></td>
          <td><%= usuarios[i].getEmail() %></td>
          <td><%= usuarios[i].getTp_cliente()  %></td>
          <td><%= usuarios[i].isPremium() ? "Habilitado":"Não Habilitado" %></td>
        </tr>
        <% } %>
      </table>
    </div>
  </body>
</html>