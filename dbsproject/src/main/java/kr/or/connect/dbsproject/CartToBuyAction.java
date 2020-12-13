package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.CartDao;
import kr.or.connect.dbsprojectDao.PurchaselistDao;


@WebServlet("/CartToBuyAction")
public class CartToBuyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CartToBuyAction() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String userid = request.getParameter("userID");
		String cartid = request.getParameter("cartID");
		
		int cartID = Integer.parseInt(cartid);
		PurchaselistDao dao = new PurchaselistDao();
		CartDao cdao = new CartDao();
		int result = dao.cartTobuy(userid, cartID);
		if(result == 1) {
			int cresult = cdao.deleteGoods(userid, cartID);
			if(cresult != 1) System.out.println("오류");
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Your purchase is complete.')");
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
