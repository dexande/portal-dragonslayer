package model;

public class JavaBeans {
	private String id;
	private String url;
	private String titulo;
	private String manchete;
	private String img_url;
	private String data_publicacao;
	private String busca;

	public JavaBeans() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JavaBeans(String id, String url, String titulo, String manchete, String img_url, String data_publicacao) {
		super();
		this.id = id;
		this.url = url;
		this.titulo = titulo;
		this.manchete = manchete;
		this.img_url = img_url;
		this.data_publicacao = data_publicacao;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getManchete() {
		return manchete;
	}

	public void setManchete(String manchete) {
		this.manchete = manchete;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public String getData_publicacao() {
		return data_publicacao;
	}

	public void setData_publicacao(String data_publicacao) {
		this.data_publicacao = data_publicacao;
	}

	public String getBusca() {
		return busca;
	}

	public void setBusca(String busca) {
		this.busca = busca;
	}

}
