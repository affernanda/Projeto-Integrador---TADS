<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="JavaBeans.Usuario" %>
<% 
	String nome = request.getParameter("nome");
	String idade = request.getParameter("idade");
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	String oper = request.getParameter("oper");
	
	Usuario usuario = new Usuario();
	
	if (oper.equals("cadastrar")){
		usuario.nome = nome;
		usuario.idade = idade;
		usuario.email = email;
		usuario.senha = senha;
		usuario.incluir();
		response.sendRedirect("index.html");
	} else if (oper.equals("voltar")){
		response.sendRedirect("perfil.html");
	}
%>