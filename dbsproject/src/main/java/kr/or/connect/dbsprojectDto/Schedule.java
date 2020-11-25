package kr.or.connect.dbsprojectDto;

import java.util.Date;

public class Schedule {
	Integer SCHEDULEID;
	Date DATE;
	Integer HOMESTADIUM;
	Integer AWAYSTADIUM;
	public Schedule(Integer sCHEDULEID, Date dATE, Integer hOMESTADIUM, Integer aWAYSTADIUM) {
		super();
		SCHEDULEID = sCHEDULEID;
		DATE = dATE;
		HOMESTADIUM = hOMESTADIUM;
		AWAYSTADIUM = aWAYSTADIUM;
	}
	public Integer getSCHEDULEID() {
		return SCHEDULEID;
	}
	public void setSCHEDULEID(Integer sCHEDULEID) {
		SCHEDULEID = sCHEDULEID;
	}
	public Date getDATE() {
		return DATE;
	}
	public void setDATE(Date dATE) {
		DATE = dATE;
	}
	public Integer getHOMESTADIUM() {
		return HOMESTADIUM;
	}
	public void setHOMESTADIUM(Integer hOMESTADIUM) {
		HOMESTADIUM = hOMESTADIUM;
	}
	public Integer getAWAYSTADIUM() {
		return AWAYSTADIUM;
	}
	public void setAWAYSTADIUM(Integer aWAYSTADIUM) {
		AWAYSTADIUM = aWAYSTADIUM;
	}
	
	
}
