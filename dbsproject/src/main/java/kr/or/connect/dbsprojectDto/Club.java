package kr.or.connect.dbsprojectDto;

public class Club {
	Integer CLUBID;
	String NAME;
	String MANAGER;
	String HOMESTADIUM;
	Integer FOUNDINGYEAR;
	String CLUBPHOTO;
	public Club(Integer cLUBID, String nAME, String mANAGER, String hOMESTADIUM, Integer fOUNDINGYEAR,
			String cLUBPHOTO) {
		super();
		this.CLUBID = cLUBID;
		this.NAME = nAME;
		this.MANAGER = mANAGER;
		this.HOMESTADIUM = hOMESTADIUM;
		this.FOUNDINGYEAR = fOUNDINGYEAR;
		this.CLUBPHOTO = cLUBPHOTO;
	}
	public Integer getCLUBID() {
		return CLUBID;
	}
	public void setCLUBID(Integer cLUBID) {
		CLUBID = cLUBID;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getMANAGER() {
		return MANAGER;
	}
	public void setMANAGER(String mANAGER) {
		MANAGER = mANAGER;
	}
	public String getHOMESTADIUM() {
		return HOMESTADIUM;
	}
	public void setHOMESTADIUM(String hOMESTADIUM) {
		HOMESTADIUM = hOMESTADIUM;
	}
	public Integer getFOUNDINGYEAR() {
		return FOUNDINGYEAR;
	}
	public void setFOUNDINGYEAR(Integer fOUNDINGYEAR) {
		FOUNDINGYEAR = fOUNDINGYEAR;
	}
	public String getCLUBPHOTO() {
		return CLUBPHOTO;
	}
	public void setCLUBPHOTO(String cLUBPHOTO) {
		CLUBPHOTO = cLUBPHOTO;
	}
	
	

}
