package kr.or.connect.dbsprojectDto;

import java.util.Date;

public class Matchresult {
	
	Integer MATCHID;
	Integer HOMESCORE;
	Integer AWAYSCORE;
	String HOMECLUB;
	String AWAYCLUB;
	Date DATE;
	
	public Matchresult(Integer mATCHID, Integer hOMESCORE, Integer aWAYSCORE, String hOMECLUB, String aWAYCLUB,
			Date dATE) {
		super();
		MATCHID = mATCHID;
		HOMESCORE = hOMESCORE;
		AWAYSCORE = aWAYSCORE;
		HOMECLUB = hOMECLUB;
		AWAYCLUB = aWAYCLUB;
		DATE = dATE;
	}
	public Integer getMATCHID() {
		return MATCHID;
	}
	public void setMATCHID(Integer mATCHID) {
		MATCHID = mATCHID;
	}
	public Integer getHOMESCORE() {
		return HOMESCORE;
	}
	public void setHOMESCORE(Integer hOMESCORE) {
		HOMESCORE = hOMESCORE;
	}
	public Integer getAWAYSCORE() {
		return AWAYSCORE;
	}
	public void setAWAYSCORE(Integer aWAYSCORE) {
		AWAYSCORE = aWAYSCORE;
	}
	public String getHOMECLUB() {
		return HOMECLUB;
	}
	public void setHOMECLUB(String hOMECLUB) {
		HOMECLUB = hOMECLUB;
	}
	public String getAWAYCLUB() {
		return AWAYCLUB;
	}
	public void setAWAYCLUB(String aWAYCLUB) {
		AWAYCLUB = aWAYCLUB;
	}
	public Date getDATE() {
		return DATE;
	}
	public void setDATE(Date dATE) {
		DATE = dATE;
	}
	
	

}
