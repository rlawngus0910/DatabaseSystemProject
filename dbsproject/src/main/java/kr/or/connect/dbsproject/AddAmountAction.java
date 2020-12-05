package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.CartDao;
import kr.or.connect.dbsprojectDao.UserDao;


@WebServlet("/AddAmountAction")
public class AddAmountAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddAmountAction() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String userid = request.getParameter("userID");
		String a = request.getParameter("amount");
	    String cartid = request.getParameter("cartID");
		
		
		int cartID = Integer.parseInt(cartid);
		int amount = Integer.parseInt(a) + 1;
		
	    CartDao dao = new CartDao();
		int result = dao.plusAmount(userid, cartID, amount);
		if(result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('수량이 증가했습니다.')");
			script.println("window.location = document.referrer");
			script.println("</script>");
		}
		else if(result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('오류')");
			script.println("history.back()");
			script.println("</script>");
		}
		
	}

}
