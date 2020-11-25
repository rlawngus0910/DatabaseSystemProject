package kr.or.connect.dbsprojectDto;

public class Club {
	Integer CLUBID;
	String NAME;
	String MANAGER;
	Integer HOMESTADIUM;
	Integer FOUNDINGYEAR;
	String CLUBPHOTO;
	public Club(Integer cLUBID, String nAME, String mANAGER, Integer hOMESTADIUM, Integer fOUNDINGYEAR,
			String cLUBPHOTO) {
		super();
		CLUBID = cLUBID;
		NAME = nAME;
		MANAGER = mANAGER;
		HOMESTADIUM = hOMESTADIUM;
		FOUNDINGYEAR = fOUNDINGYEAR;
		CLUBPHOTO = cLUBPHOTO;
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
	public Integer getHOMESTADIUM() {
		return HOMESTADIUM;
	}
	public void setHOMESTADIUM(Integer hOMESTADIUM) {
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
