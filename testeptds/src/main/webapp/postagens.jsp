<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("noticias");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Portal Dragonslayer - MMORPGs e RPGs</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<div class="container d-flex justify-content-center">
			<div class="topbar col-sm-12 col-md-10 col-md-offset-1">
				<div class="logo">
					<a href="home"> <img
						src="imagens/portal-dragonslayer-high-resolution-logo-transparent.png"
						alt="Logo Portal Dragonslayer" width="450" height="80">
					</a>
				</div>
				<nav class="navbar">
					<ul>
						<li><a href="news">Novidades</a></li>
						<li><a href="news">Reviews</a></li>
						<li><a href="news">Listas</a></li>
						<li><a href="news">Guias</a></li>
					</ul>
					<form method="get" action="search">
						<div class="form-group">
							<div class="input-group">
								<input class="form-control" type="text" name="pesquisa"
									placeholder="Pesquisar..."> <input type="submit"
									class="btn btn-light" value="&#128269">
							</div>
						</div>
					</form>
				</nav>
			</div>
		</div>
	</header>
	<section class="container d-flex justify-content-center">
		<div class="home-post col-sm-12 col-md-10 col-md-offset-1">
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>
			<article class="article">
				<figure class="alignleft">
					<a href="<%=lista.get(i).getUrl()%>"> <img
						src="<%=lista.get(i).getImg_url()%>" alt="Imagem da noticia"
						width="440" height="300">
					</a>
				</figure>
				<a href="<%=lista.get(i).getUrl()%>">
					<h2><%=lista.get(i).getTitulo()%></h2>
				</a>
				<p><%=lista.get(i).getManchete()%></p>
				<div class="info">
					Por Alexandre Santiago -
					<%=lista.get(i).getData_publicacao()%></div>
			</article>
			<%
			if (i == lista.size() - 1) {
			%>
			<%
			} else {
			%>
			<hr>
			<%
			}
			%>
			<%
			}
			%>
		</div>
	</section>
	<footer class="container d-flex justify-content-center">
		<div class="rodape col-sm-12 col-md-10 col-md-offset-1">Política
			de Privacidade | © 2024 Portal Dragonslayer. Todos os direitos
			reservados.</div>
	</footer>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>