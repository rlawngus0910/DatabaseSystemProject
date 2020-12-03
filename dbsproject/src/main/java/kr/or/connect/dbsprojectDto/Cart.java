package kr.or.connect.dbsprojectDto;

public class Cart {
	Integer CARTID;
	String USER;
	Integer GID;
	Integer amount;
	
	public Cart(){}
	
	
	public Cart(Integer cARTID, String uSER, Integer gID) {
		super();
		CARTID = cARTID;
		USER = uSER;
		GID = gID;
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
