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
		<div class="featured col-sm-12 col-md-10 col-md-offset-1">
			<ul class="list-inline">
				<li class="list-inline-item">
					<div class="image-item">
						<a href="template-post.html"><img src="imagens/elin.png"
							alt=""></a> <a href="template-post.html">
							<div class="description">
								<div class="desc-text">
									<p>Conheça Elin, JRPG Sandbox com elementos Rogue-Like e
										Farming-Sim</p>
								</div>
							</div>
						</a>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="image-item">
						<a href="template-post.html"><img src="imagens/apogea.png"
							alt=""></a> <a href="template-post.html">
							<div class="description">
								<div class="desc-text">
									<p>Saiba mais sobre Apogea, MMORPG feito por brasileiros</p>
								</div>
							</div>
						</a>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="image-item">
						<a href="template-post.html"><img src="imagens/tlspear1.png"
							alt=""></a> <a href="template-post.html">
							<div class="description">
								<div class="desc-text">
									<p>Novo update de Throne and Liberty traz a Lança como nova
										arma</p>
								</div>
							</div>
						</a>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="image-item">
						<a href="template-post.html"><img src="imagens/poe2.png"
							alt=""></a> <a href="template-post.html">
							<div class="description">
								<div class="desc-text">
									<p>Early Access do ARPG Path of Exile 2 inicia em 6 de
										Dezembro</p>
								</div>
							</div>
						</a>
					</div>
				</li>
			</ul>
		</div>
	</section>
	<section class="container d-flex justify-content-center">
		<div class="home-post col-sm-12 col-md-10 col-md-offset-1">
			<article class="article">
				<figure class="alignleft">
					<a href="<%=lista.get(0).getUrl()%>"> <img
						src="<%=lista.get(0).getImg_url()%>" alt="Imagem da noticia"
						width="440" height="300">
					</a>
				</figure>
				<iframe class="alignright"
					src="https://discord.com/widget?id=696847769444548700" width="320"
					height="300" frameborder="0" scrolling="no"> </iframe>
				<a href="<%=lista.get(0).getUrl()%>">
					<h2><%=lista.get(0).getTitulo()%></h2>
				</a>
				<p><%=lista.get(0).getManchete()%></p>
				<div class="info">
					Por Alexandre Santiago -
					<%=lista.get(0).getData_publicacao()%></div>
			</article>
			<%
			for (int i = 1; i < lista.size(); i++) {
			%>
			<hr>
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