package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.CartDao;


@WebServlet("/DeleteGoodsAction")
public class DeleteGoodsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteGoodsAction() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String userid = request.getParameter("userID");
	    String cartid = request.getParameter("cartID");
	    
	    int cartID = Integer.parseInt(cartid);
	    CartDao dao = new CartDao();
	    int result = dao.deleteGoods(userid, cartID);
	    if(result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Delete your cart.')");
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
