package kr.or.connect.dbsprojectDto;

public class Purchaselist {
	Integer PURCHASELISTID;
	String	USER;
	Integer ITMEID;
	Integer amount;
	String img;
	String name;
	Integer price;
	
	
	public Purchaselist() {}
	public Purchaselist(Integer pURCHASELISTID, String img, String name, Integer price, Integer amount) {
		super();
		PURCHASELISTID = pURCHASELISTID;
		this.img = img;
		this.name = name;
		this.price = price;
		this.amount = amount;
	}
	public Purchaselist(Integer pURCHASELISTID, String uSER, Integer iTMEID) {
		super();
		PURCHASELISTID = pURCHASELISTID;
		USER = uSER;
		ITMEID = iTMEID;
	}
	public Integer getPURCHASELISTID() {
		return PURCHASELISTID;
	}
	public void setPURCHASELISTID(Integer pURCHASELISTID) {
		PURCHASELISTID = pURCHASELISTID;
	}
	public String getUSER() {
		return USER;
	}
	public void setUSER(String uSER) {
		USER = uSER;
	}
	public Integer getITMEID() {
		return ITMEID;
	}
	public void setITMEID(Integer iTMEID) {
		ITMEID = iTMEID;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
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

}
