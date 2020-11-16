package kr.or.connect.dbsproject;

import java.util.List;

import kr.or.connect.dbsprojectDao.UserDao;
import kr.or.connect.dbsprojectDto.User;

public class DBTest {
	public static void main(String[] args) {
		UserDao dao = new UserDao();
		List<User> list = dao.getUser();
		for(User user : list) {
			System.out.println(user);
		}
	}
}
