package kr.or.connect.dbsprojectDto;

public class Ticketing {
	
	Integer TICKETINGID;
	Integer SID;
	Integer PRICE;
	String MEMBER;
	String HOMETEAM;
	String AWAYTEAM;
	String DATE;
	String TIME;
	
	
	public Ticketing(Integer sID, String hOMETEAM, String aWAYTEAM, String dATE, String tIME) {
		super();
		SID = sID;
		HOMETEAM = hOMETEAM;
		AWAYTEAM = aWAYTEAM;
		DATE = dATE;
		TIME = tIME;
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
	public String getHOMETEAM() {
		return HOMETEAM;
	}
	public void setHOMETEAM(String hOMETEAM) {
		HOMETEAM = hOMETEAM;
	}
	public String getAWAYTEAM() {
		return AWAYTEAM;
	}
	public void setAWAYTEAM(String aWAYTEAM) {
		AWAYTEAM = aWAYTEAM;
	}
	public String getDATE() {
		return DATE;
	}
	public void setDATE(String dATE) {
		DATE = dATE;
	}
	public String getTIME() {
		return TIME;
	}
	public void setTIME(String tIME) {
		TIME = tIME;
	}
	
	
	

}
