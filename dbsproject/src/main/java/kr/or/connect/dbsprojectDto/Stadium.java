package kr.or.connect.dbsprojectDto;

public class Stadium {
	
	Integer STADIUMID;
	String NAME;
	Integer CAPACITY;
	String CITY;
	public Stadium(Integer sTADIUMID, String nAME, Integer cAPACITY, String cITY) {
		super();
		STADIUMID = sTADIUMID;
		NAME = nAME;
		CAPACITY = cAPACITY;
		CITY = cITY;
	}
	public Integer getSTADIUMID() {
		return STADIUMID;
	}
	public void setSTADIUMID(Integer sTADIUMID) {
		STADIUMID = sTADIUMID;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public Integer getCAPACITY() {
		return CAPACITY;
	}
	public void setCAPACITY(Integer cAPACITY) {
		CAPACITY = cAPACITY;
	}
	public String getCITY() {
		return CITY;
	}
	public void setCITY(String cITY) {
		CITY = cITY;
	}
	
	

}
