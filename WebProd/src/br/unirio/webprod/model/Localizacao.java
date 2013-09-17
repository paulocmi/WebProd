package br.unirio.webprod.model;

public class Localizacao {

	private String estado;
	private String municipio;
	private String bairro;
	private String rua;
	private int logradouro;
	private String complemento;
	private double longitude;
	private double latitude;

	public Localizacao(String estado, String municipio, String bairro,
			String rua, int logradouro, String complemento, double longitude,
			double latitude) {
		super();
		this.estado = estado;
		this.municipio = municipio;
		this.bairro = bairro;
		this.rua = rua;
		this.logradouro = logradouro;
		this.complemento = complemento;
		this.longitude = longitude;
		this.latitude = latitude;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getMunicipio() {
		return municipio;
	}

	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public int getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(int logradouro) {
		this.logradouro = logradouro;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

}
