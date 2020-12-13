package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.UserDao;
import kr.or.connect.dbsprojectDto.User;


@WebServlet("/JoinAction")
public class JoinAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public JoinAction() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("userID");
		String password = request.getParameter("userPassword");
		String name = request.getParameter("userName");
		String year = request.getParameter("userBirthYear");
		String month = request.getParameter("userBirthMonth");
		String day = request.getParameter("userBirthDay");
		String email = request.getParameter("userEmail");
		
		String birth = year + "." + month + "." + day;
		
		User user = new User(id,password,name,email,birth);
		UserDao dao = new UserDao();
		int result = dao.join(user);
		if(result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('The ID already exists.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('registration is complete.')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		
	}

}
