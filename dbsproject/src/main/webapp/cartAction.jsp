<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.connect.dbsprojectDao.CartDao" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="cart" class="kr.or.connect.dbsprojectDto.Cart" scope="page"/>
<jsp:useBean id="goods" class="kr.or.connect.dbsprojectDto.Goods" scope="page"/>
<jsp:setProperty name="goods" property="GOODSID"/>
<jsp:setProperty name="cart" property="USER"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	CartDao dao = new CartDao();
	String userID = request.getParameter("userID");
	String goodsID = request.getParameter("goodsID");
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	
	else {
		int gID = Integer.parseInt(goodsID);
		int result = dao.addCart(userID, gID);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('오류 발생')");
			script.println("history.back()");
			script.println("</script>");
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원님의 장바구니에 등록되었습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
	}

%>

</body>
</html>