package kr.or.connect.dbsprojectDto;

public class Player {
	private Integer playerID;
	private String NAME;
	private String NATION;
	private String POSITION;
	private String BIRTH;
	private Integer CLUB;
	private String BACKNO;
	private Integer PHOTO;
	
	public Player() {
		
	}
	
	public Player(Integer playerid) {
		super();
		this.playerID = playerid;
		
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
	public Integer getCLUB() {
		return CLUB;
	}
	public void setCLUB(Integer cLUB) {
		CLUB = cLUB;
	}
	public String getBACKNO() {
		return BACKNO;
	}
	public void setBACKNO(String bACKNO) {
		BACKNO = bACKNO;
	}
	public Integer getPHOTO() {
		return PHOTO;
	}
	public void setPHOTO(Integer pHOTO) {
		PHOTO = pHOTO;
	}
	
	
	
	
	
	
}
