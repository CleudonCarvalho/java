package net.javaguides.usermanagement.model;

public class User {
	
	private int id;
	private String name;
	private String email;
	private String country;
	
	//BOM > Business Object Model > Modelo de negocio que comporta o gerenciamento e forma de comportamento
	//dos dados por meio das funções, logica e regra de negocio!
	
	public User(int id, String name, String email, String country) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.country = country;
	}
	
	
	public User(String name, String emailString, String country) {
		super();
		this.name = name;
		this.email = emailString;
		this.country = country;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
}

//Quando formos acessar, “pegar” alguns atributos da classe, devemos utilizar os 
//métodos GET. Esse método sempre retornará um valor, seja ele String, int ,double 
//etc. Então devemos criar uma função.

//Para alterarmos, modificarmos os valores de um atributo da classe de maneira protegida,
//utilizamos os métodos SET. Esse método não terá um retorno, pois o atributo será somente 
//modificado, criando um método de tipo VOID, sem retorno. Porém ele deve receber algum 
//argumento para que possa ocorrer a devida alteração.