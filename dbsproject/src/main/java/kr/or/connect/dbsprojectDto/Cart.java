package kr.or.connect.dbsprojectDto;

public class Cart {
	Integer CARTID;
	String USER;
	Integer GID;
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

	
}
