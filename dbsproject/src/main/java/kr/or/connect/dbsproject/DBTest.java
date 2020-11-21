package kr.or.connect.dbsproject;

import java.util.List;

import kr.or.connect.dbsprojectDao.*;
import kr.or.connect.dbsprojectDto.*;


public class DBTest {
	public static void main(String[] args) {
		PlayerDao dao = new PlayerDao();
		List<Player> list = dao.getPlayer();
		for(Player player : list) {
			System.out.println(player.getPlayerID());
		}
	}
}
