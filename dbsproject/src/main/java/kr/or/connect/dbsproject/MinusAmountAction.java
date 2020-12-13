package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.CartDao;


@WebServlet("/MinusAmountAction")
public class MinusAmountAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MinusAmountAction() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String userid = request.getParameter("userID");
		String a = request.getParameter("amount");
	    String cartid = request.getParameter("cartID");
		
	 
		
		int cartID = Integer.parseInt(cartid);
		int amount = Integer.parseInt(a) - 1;
		
		if(amount == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Quantity cannot be reduced.')");
			script.println("location.href = history.back()");
			script.println("</script>");
		}
		else {
			CartDao dao = new CartDao();
			int result = dao.plusAmount(userid, cartID, amount);
			if(result == 1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('The quantity has decreased.')");
				script.println("window.location = document.referrer");
				script.println("</script>");
			}
			else if(result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('error')");
				script.println("history.back()");
				script.println("</script>");
			}
		}
		
	}

}
