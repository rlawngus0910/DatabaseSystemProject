package kr.or.connect.dbsprojectDto;

import java.util.Date;
import java.sql.Time;


public class Schedule {
	Integer SCHEDULEID;
	String HOMETEAM;
	String AWAYTEAM;
	Date DATE;
	String time;
	
	public Schedule(Integer sCHEDULEID, String hOMETEAM, String aWAYTEAM, Date dATE, String time) {
		super();
		SCHEDULEID = sCHEDULEID;
		HOMETEAM = hOMETEAM;
		AWAYTEAM = aWAYTEAM;
		DATE = dATE;
		this.time = time;
	}
	public Integer getSCHEDULEID() {
		return SCHEDULEID;
	}
	public void setSCHEDULEID(Integer sCHEDULEID) {
		SCHEDULEID = sCHEDULEID;
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
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
}
