package kr.or.connect.dbsproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.dbsprojectDao.CartDao;
import kr.or.connect.dbsprojectDao.TicketingDao;


@WebServlet("/TicketingAction")
public class TicketingAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public TicketingAction() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
	    String sid = request.getParameter("sid");
	    String price = request.getParameter("price");
	    String member = request.getParameter("member");
	    
	    int Sid = Integer.parseInt(sid);
	    
	    TicketingDao dao = new TicketingDao();
		int result = dao.insertTicketing(Sid,price,member);
		if(result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Success!')");
			script.println("window.location = document.referrer");
			script.println("</script>");
		}
		else if(result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Login please')");
			script.println("history.back()");
			script.println("</script>");
		}
	    
	}

}
