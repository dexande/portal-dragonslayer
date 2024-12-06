package controller;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.DAO;
import model.JavaBeans;

@WebServlet(urlPatterns = { "/Controller", "", "/home", "/news", "/search" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();
	JavaBeans noticia = new JavaBeans();

	public Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(request.getContextPath());
		System.out.println(request.getServletPath());

		if (action.equals("/news")) {
			listarPostagens(request, response);
		} else if (action.equals("/search")) {
			buscarPostagens(request, response);
		} else {
			carregarMainPage(request, response);
		}
	}

	protected void carregarMainPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<JavaBeans> lista = dao.listarNoticias();
		request.setAttribute("noticias", lista);
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

	protected void listarPostagens(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<JavaBeans> lista = dao.listarNoticias();
		request.setAttribute("noticias", lista);
		RequestDispatcher rd = request.getRequestDispatcher("postagens.jsp");
		rd.forward(request, response);
	}

	protected void buscarPostagens(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String busca = request.getParameter("pesquisa");
		System.out.println(busca);
		noticia.setBusca(busca);
		ArrayList<JavaBeans> lista = dao.listarPesquisa(noticia);
		request.setAttribute("noticias", lista);
		RequestDispatcher rd = request.getRequestDispatcher("busca.jsp");
		rd.forward(request, response);
	}

}
