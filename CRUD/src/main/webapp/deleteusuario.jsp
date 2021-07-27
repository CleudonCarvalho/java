<%@page import="com.crud.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.crud.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	UsuarioDao.deletarUsuario(u);
	response.sendRedirect("viewusuarios.jsp");
%>