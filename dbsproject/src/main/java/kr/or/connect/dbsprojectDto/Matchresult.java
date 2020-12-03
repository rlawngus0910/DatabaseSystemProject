package kr.or.connect.dbsprojectDto;

import java.util.Date;

public class Matchresult {
	
	Integer MATCHID;
	Integer HOMESCORE;
	Integer AWAYSCORE;
	String HOMETEAM;
	String AWAYTEAM;
	Date DATE;
	public Matchresult(Integer mATCHID, Integer hOMESCORE, Integer aWAYSCORE, String hOMETEAM, String aWAYTEAM,
			Date dATE) {
		super();
		MATCHID = mATCHID;
		HOMESCORE = hOMESCORE;
		AWAYSCORE = aWAYSCORE;
		HOMETEAM = hOMETEAM;
		AWAYTEAM = aWAYTEAM;
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
	public Date getDATE() {
		return DATE;
	}
	public void setDATE(Date dATE) {
		DATE = dATE;
	}
	
	
	

}
