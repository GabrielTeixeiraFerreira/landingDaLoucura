<%@ page import="com.khita_servlet.model.Usuario" %>
<%@ page import="com.khita_servlet.model.Endereco" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/endereco.css">
    <title>Enviar endereço</title>
</head>
<body>
<%  Usuario comprador  = (Usuario) request.getAttribute("comprador");
    Usuario costureiro = (Usuario) request.getAttribute("costureiro");
    Endereco enderecoComprador = (Endereco) request.getAttribute("endereco");

    String corpoEmail = "Olá senhor/a costureiro/a "+costureiro.getNome()+", nós da equipe administrativa do Khiata, viemos por meio deste e-mail enviar o endereço do/a comprador/a" +comprador.getNome()+ ". Agradecemos desde já! \nSegue o endereço solicitado: " +enderecoComprador;
%>
<div class="conteudo">
    <!-- Area das informações do comprador -->
    <div class="comprador">
        <h1>Comprador/a</h1>
        <p><%= comprador.getNome() %></p>
        <p>CEP: <%= enderecoComprador.getCep() %></p>
    </div>
    <!-- --------------------------------- -->


    <img src="assets/seta.gif" class="seta">


    <!-- Area de informações do costureiro -->
    <div class="costureiro">
        <h1>Costureiro/a</h1>
        <p><%= costureiro.getNome() %></p>
    </div>
    <!-- --------------------------------- -->



    <a href="mailto:<%= costureiro.getEmail() %>?subject=Endereco do/a comprador/a &bcc=khiatatextil@gmail.com&body=<%= corpoEmail %>" class="enviar">Mandar email</a>

</div>
</body>
</html> 