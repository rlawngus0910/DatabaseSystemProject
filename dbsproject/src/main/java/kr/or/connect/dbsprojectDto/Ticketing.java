package kr.or.connect.dbsprojectDto;

public class Ticketing {
	
	Integer TICKETINGID;
	Integer SID;
	Integer PRICE;
	String MEMBER;
	public Ticketing(Integer tICKETINGID, Integer sID, Integer pRICE, String mEMBER) {
		super();
		TICKETINGID = tICKETINGID;
		SID = sID;
		PRICE = pRICE;
		MEMBER = mEMBER;
	}
	public Integer getTICKETINGID() {
		return TICKETINGID;
	}
	public void setTICKETINGID(Integer tICKETINGID) {
		TICKETINGID = tICKETINGID;
	}
	public Integer getSID() {
		return SID;
	}
	public void setSID(Integer sID) {
		SID = sID;
	}
	public Integer getPRICE() {
		return PRICE;
	}
	public void setPRICE(Integer pRICE) {
		PRICE = pRICE;
	}
	public String getMEMBER() {
		return MEMBER;
	}
	public void setMEMBER(String mEMBER) {
		MEMBER = mEMBER;
	}
	
	

}
