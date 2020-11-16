package kr.or.connect.dbsprojectDto;

public class User {
	private String ID;
	private String PW;
	private String NAME;
	private String EMAIL;
	private String BIRTH;
	
	public User() {
		
	}
	
	
	public User(String iD) {
		super();
		this.ID = iD;
		
	}

	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String pW) {
		PW = pW;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getBIRTH() {
		return BIRTH;
	}
	public void setBIRTH(String bIRTH) {
		BIRTH = bIRTH;
	}
}
