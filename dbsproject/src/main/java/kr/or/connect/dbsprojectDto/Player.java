package kr.or.connect.dbsprojectDto;

public class Player {
	private Integer playerID;
	private String NAME;
	private String NATION;
	private String POSITION;
	private String BIRTH;
	private String CLUB;
	private Integer BACKNO;
	private String PHOTO;
	
	public Player() {
		
	}
	
	
	public Player(Integer playerid, String name, String nation, String position, String birth, String club, Integer backno, String photo) {
		super();
		this.playerID = playerid;
		this.NAME = name; 
		this.NATION = nation;
		this.POSITION = position;
		this.BIRTH = birth;
		this.CLUB = club;
		this.BACKNO = backno;
		this.PHOTO = photo;
	}
	
	
	
	public Integer getPlayerID() {
		return playerID;
	}
	public void setPlayerID(Integer playerID) {
		this.playerID = playerID;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getNATION() {
		return NATION;
	}
	public void setNATION(String nATION) {
		NATION = nATION;
	}
	public String getPOSITION() {
		return POSITION;
	}
	public void setPOSITION(String pOSITION) {
		POSITION = pOSITION;
	}
	public String getBIRTH() {
		return BIRTH;
	}
	public void setBIRTH(String bIRTH) {
		BIRTH = bIRTH;
	}
	public String getCLUB() {
		return CLUB;
	}
	public void setCLUB(String cLUB) {
		CLUB = cLUB;
	}
	public Integer getBACKNO() {
		return BACKNO;
	}
	public void setBACKNO(Integer bACKNO) {
		BACKNO = bACKNO;
	}
	public String getPHOTO() {
		return PHOTO;
	}
	public void setPHOTO(String pHOTO) {
		PHOTO = pHOTO;
	}
	
	
	
	
	
	
}
