package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.CartDao;


@WebServlet("/DeleteAllGoodsAction")
public class DeleteAllGoodsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteAllGoodsAction() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String userid = request.getParameter("userID");
		
		CartDao dao = new CartDao();
		int result = dao.deleteAllGoods(userid);
		if(result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('장바구니에서 모두 삭제되었습니다.')");
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
