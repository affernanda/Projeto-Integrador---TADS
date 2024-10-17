<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="JavaBeans.Usuario"%>

<%
String oper = request.getParameter("oper");

if (oper.equals("logar")) {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        Usuario usuario = new Usuario();
        
	usuario.email = email;
	usuario.senha = senha;
	if (usuario.checarLogin() == true) {
		response.sendRedirect("Web Pages/index.html");
	} else {
		String saida = "<center>Login ou senha não encontrados. Faça o cadastro para prosseguir."
		+ "<a href = '../perfil.html'> Voltar </a></center>";
		out.println(saida);
	}
}
%>

