package kr.or.connect.dbsprojectDto;

public class Purchaselist {
	Integer PURCHASELISTID;
	String	USER;
	Integer ITMEID;
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
	
	

}
