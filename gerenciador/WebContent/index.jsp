<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
    Bem vindo ao nosso gerenciador de empresas!
    <c:if test="${not empty usuarioLogado}">
        Você está logado como ${usuarioLogado.email}<br/>
    </c:if>
	<form action="executa?tarefa=NovaEmpresa" method="post">
   	 	Nome: <input type="text" name="nome" /><br />
   	 	<input type="submit" value="Enviar" />
	</form>
	<form action="login" method="post">
		email:<input type="text" name="email"/><br/>
		senha:<input type="text" name="senha"/><br/>
		<input type="submit" value="Login"/>
	</form>
	<form action="executa?tarefa=Logout" method="post">
    <input type="submit" value="Logout" />
</form>
</body>
</html>