package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.PurchaselistDao;

@WebServlet("/BuyAction")
public class BuyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public BuyAction() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String userid = request.getParameter("userID");
		String goodsID = request.getParameter("goodsID");
		
		int gID = Integer.parseInt(goodsID);
		PurchaselistDao dao = new PurchaselistDao();
		int result = dao.buy(userid, gID);
		if(result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('구매가 완료되었습니다.')");
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
