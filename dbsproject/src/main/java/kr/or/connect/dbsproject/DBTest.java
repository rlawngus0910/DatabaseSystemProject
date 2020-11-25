package kr.or.connect.dbsproject;

import java.util.List;

import kr.or.connect.dbsprojectDao.*;
import kr.or.connect.dbsprojectDto.*;


public class DBTest {
	public static void main(String[] args) {
		PlayerDao dao = new PlayerDao();
		List<Player> list = dao.getPlayer();
		for(Player player : list) {
			System.out.print(player.getPlayerID()+" ");
			System.out.print(player.getNAME()+" ");
			System.out.print(player.getNATION()+" ");
			System.out.print(player.getPOSITION()+" ");
			System.out.print(player.getBIRTH()+" ");
			System.out.print(player.getCLUB()+" ");
			System.out.print(player.getBACKNO()+" ");
			System.out.println(player.getPHOTO());
			}
	}
}
