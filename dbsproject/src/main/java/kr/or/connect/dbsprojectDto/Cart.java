package kr.or.connect.dbsprojectDto;

public class Cart {
	Integer CARTID;
	String USER;
	Integer GID;
	Integer amount;
	String img;
	String name;
	Integer price;
	
	public Cart(){}
	
	
	public Cart(Integer cartID, String img, String name, Integer price, Integer amount) {
		CARTID = cartID;
		this.img = img;
		this.name = name;
		this.price = price;
		this.amount = amount;
	}
	
	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}


	public Cart(Integer cARTID, String uSER, Integer gID, Integer AMOUNT) {
		super();
		CARTID = cARTID;
		USER = uSER;
		GID = gID;
		amount = AMOUNT;
	}
	public Integer getCARTID() {
		return CARTID;
	}
	public void setCARTID(Integer cARTID) {
		CARTID = cARTID;
	}
	public String getUSER() {
		return USER;
	}
	public void setUSER(String uSER) {
		USER = uSER;
	}
	public Integer getGID() {
		return GID;
	}
	public void setGID(Integer gID) {
		GID = gID;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	

	
}
