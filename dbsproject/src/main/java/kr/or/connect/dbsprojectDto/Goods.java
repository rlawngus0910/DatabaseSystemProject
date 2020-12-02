package kr.or.connect.dbsprojectDto;

public class Goods {
	Integer GOODSID;
	Integer CLUBNUMBER;
	String GOODSNAME;
	Integer GOODSPRICE;
	String CATEGORY;
	String GOODSPHOTO;
	
	public Goods(Integer gOODSID, Integer cLUBNUMBER, String gOODSNAME, Integer gOODSPRICE, String cATEGORY,
			String gOODSPHOTO) {
		super();
		GOODSID = gOODSID;
		CLUBNUMBER = cLUBNUMBER;
		GOODSNAME = gOODSNAME;
		GOODSPRICE = gOODSPRICE;
		CATEGORY = cATEGORY;
		GOODSPHOTO = gOODSPHOTO;
	}
	public Integer getGOODSID() {
		return GOODSID;
	}
	public void setGOODSID(Integer gOODSID) {
		GOODSID = gOODSID;
	}
	public Integer getCLUBNUMBER() {
		return CLUBNUMBER;
	}
	public void setCLUBNUMBER(Integer cLUBNUMBER) {
		CLUBNUMBER = cLUBNUMBER;
	}
	public String getGOODSNAME() {
		return GOODSNAME;
	}
	public void setGOODSNAME(String gOODSNAME) {
		GOODSNAME = gOODSNAME;
	}
	public Integer getGOODSPRICE() {
		return GOODSPRICE;
	}
	public void setGOODSPRICE(Integer gOODSPRICE) {
		GOODSPRICE = gOODSPRICE;
	}
	public String getCATEGORY() {
		return CATEGORY;
	}
	public void setCATEGORY(String cATEGORY) {
		CATEGORY = cATEGORY;
	}
	public String getGOODSPHOTO() {
		return GOODSPHOTO;
	}
	public void setGOODSPHOTO(String gOODSPHOTO) {
		GOODSPHOTO = gOODSPHOTO;
	}
	
	

}
