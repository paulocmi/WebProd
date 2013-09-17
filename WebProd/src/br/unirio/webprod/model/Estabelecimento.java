package br.unirio.webprod.model;

public class Estabelecimento {

	private int id;
	private String nome;
	private String endereco_eletronico;
	private String endereco_fisico;
	private int tipo_estabelecimento;
	private String estado;

	public Estabelecimento(int id, String nome, String endereco_eletronico,
			String endereco_fisico, int tipo_estabelecimento, String estado) {
		super();
		this.id = id;
		this.nome = nome;
		this.endereco_eletronico = endereco_eletronico;
		this.endereco_fisico = endereco_fisico;
		this.tipo_estabelecimento = tipo_estabelecimento;
		this.estado = estado;
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

	public String getEndereco_eletronico() {
		return endereco_eletronico;
	}

	public void setEndereco_eletronico(String endereco_eletronico) {
		this.endereco_eletronico = endereco_eletronico;
	}

	public String getEndereco_fisico() {
		return endereco_fisico;
	}

	public void setEndereco_fisico(String endereco_fisico) {
		this.endereco_fisico = endereco_fisico;
	}

	public int getTipo_estabelecimento() {
		return tipo_estabelecimento;
	}

	public void setTipo_estabelecimento(int tipo_estabelecimento) {
		this.tipo_estabelecimento = tipo_estabelecimento;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

}
