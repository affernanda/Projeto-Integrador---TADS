<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="JavaBeans.Usuario"%>

<%
String email = request.getParameter("email");
String senha = request.getParameter("senha");
String oper = request.getParameter("oper");

Usuario usuario = new Usuario();

if (oper.equals("logar")) {
	usuario.email = email;
	usuario.senha = senha;
	if (usuario.checarLogin() == true) {
		response.sendRedirect("index.html");
	} else {
		String saida = "<center>Login ou senha não encontrados. Faça o cadastro para prosseguir."
		+ "<a href = '../cadastro.html'> Voltar </a></center>";
		out.println(saida);
	}
} else if (oper.equals("cadastrar")) {
	response.sendRedirect("webapp/cadastrar.html");
}
%>

