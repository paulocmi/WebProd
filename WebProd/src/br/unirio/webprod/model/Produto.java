package br.unirio.webprod.model;

public class Produto {

	private int id;
	private String nome;
	private String fabricante;
	private int estoque;
	private int id_fabricante;
	private int estabelecimento;

	public Produto(int id, String nome, String fabricante, int estoque,
			int id_fabricante, int estabelecimento) {
		super();
		this.id = id;
		this.nome = nome;
		this.fabricante = fabricante;
		this.estoque = estoque;
		this.id_fabricante = id_fabricante;
		this.estabelecimento = estabelecimento;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}

	public int getEstoque() {
		return estoque;
	}

	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}

	public int getId_fabricante() {
		return id_fabricante;
	}

	public void setId_fabricante(int id_fabricante) {
		this.id_fabricante = id_fabricante;
	}

	public int getEstabelecimento() {
		return estabelecimento;
	}

	public void setEstabelecimento(int estabelecimento) {
		this.estabelecimento = estabelecimento;
	}

}
