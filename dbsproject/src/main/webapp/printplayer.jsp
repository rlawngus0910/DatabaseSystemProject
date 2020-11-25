<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.connect.dbsprojectDto.Player" %>
<%@ page import="kr.or.connect.dbsprojectDao.PlayerDao" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 뷰포트 -->

<meta name="viewport" content="width=device-width" initial-scale="1">

<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<%
		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>


	<!-- 네비게이션  -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
				aria-expaned="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
		</div>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class="active"><a href="bbs.jsp">게시판</a></li>
			</ul>

			<%
				//라긴안된경우
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<!-- 게시판 -->
	<div class="container">
		<div class = "row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">이름</th>
						<th style="background-color: #eeeeee; text-align: center;">국가</th>
						<th style="background-color: #eeeeee; text-align: center;">포지션</th>
						<th style="background-color: #eeeeee; text-align: center;">생년월일</th>
						<th style="background-color: #eeeeee; text-align: center;">클럽</th>
						<th style="background-color: #eeeeee; text-align: center;">등번호</th>
						<th style="background-color: #eeeeee; text-align: center;">사진</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					<% 	PlayerDao dao = new PlayerDao();
						List<Player> list = dao.getPlayer();
						%>
						<% for(Player player : list){
						%>
						<td><%out.print(player.getPlayerID());%></td>
						<td><%out.print(player.getNAME());%></td>
						<td><%out.print(player.getNATION());%></td>
						<td><%out.print(player.getPOSITION());%></td>
						<td><%out.print(player.getBIRTH());%></td>
						<td><%out.print(player.getCLUB());%></td>
						<td><%out.print(player.getBACKNO());%></td>
						<td><%out.print(player.getPHOTO());%></td>
						<tr>
						<% } %>
					</tr>
				</tbody>
			</table>	
			<a href = "write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>



	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 부트스트랩 JS  -->
	<script src="js/test.js"></script>

</body>
</html>
