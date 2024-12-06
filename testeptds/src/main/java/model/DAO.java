package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {
	/** Modulo de Conexao **/
	// Parametros de conexao
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/ptds?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "root";

	// Metodo de conexao
	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	// Listar Noticias
	public ArrayList<JavaBeans> listarNoticias() {
		ArrayList<JavaBeans> noticias = new ArrayList<>();
		String read = "select * from noticias order by id desc";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				String id = rs.getString(1);
				String url = rs.getString(2);
				String titulo = rs.getString(3);
				String manchete = rs.getString(4);
				String img_url = rs.getString(5);
				String data_publicacao = rs.getString(6);
				noticias.add(new JavaBeans(id, url, titulo, manchete, img_url, data_publicacao));
			}
			con.close();
			return noticias;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	// Listar pesquisa
	public ArrayList<JavaBeans> listarPesquisa(JavaBeans noticia) {
		ArrayList<JavaBeans> noticias = new ArrayList<>();
		String read = "select * from noticias where titulo like ? order by id desc";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);
			pst.setString(1, "%" + noticia.getBusca() + "%");
			System.out.println(pst);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				String id = rs.getString(1);
				String url = rs.getString(2);
				String titulo = rs.getString(3);
				String manchete = rs.getString(4);
				String img_url = rs.getString(5);
				String data_publicacao = rs.getString(6);
				noticias.add(new JavaBeans(id, url, titulo, manchete, img_url, data_publicacao));
			}
			con.close();
			return noticias;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
