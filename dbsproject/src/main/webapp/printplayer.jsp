<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.connect.dbsprojectDto.Player" %>
<%@ page import="kr.or.connect.dbsprojectDao.PlayerDao" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<style>
/* 공통옵션 */
ul li {list-style:none; }
.fl {float:left; }
.tc {text-align:center; }

/* 게시판 목록 */
.board {width: 1500px; }
.w50  {width:50px;  }
.w100 {width:100px; }
.w200 {width:200px; }
.w300 {width:300px; }
.w400 {width:400px; }
.w500 {width:500px; }

.title {
	height: 50px;
	line-height: 50px;
	background:skyblue;
	font-weight: bold;
}
.t_line {border-right:solid 1px gray;}
.lt_line {border-bottom:solid 1px gray;}
.list {
	height: 40px;
	line-height: 40px;
	background: #f3f3f3;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <ul class="board">
	  	<li class="fl tc w50 title t_line">번호</li>
	  	<li class="fl tc w200 title t_line">이름</li>
	  	<li class="fl tc w300 title t_line">국가</li>
	  	<li class="fl tc w100 title t_line">포지션</li>
	  	<li class="fl tc w100 title t_line">생년월일</li>
	  	<li class="fl tc w200 title t_line">클럽</li>
	  	<li class="fl tc w50 title t_line">등번호</li>
	  	<li class="fl tc w300 title t_line">사진</li>
	  </ul>
	  <!--- 리스트 --->
	  <ul class="board">
	  	<li class="fl tc w70 list t_line lt_line">2</li>
	  	<li class="fl tc w500 list t_line lt_line">제목</li>
	  	<li class="fl tc w120 list t_line lt_line">관리자</li>
	  	<li class="fl tc w100 list t_line lt_line">2019-02-11</li>
	  	<li class="fl tc w100 list  lt_line">1</li>
	  </ul>
	 
<% 
PlayerDao dao = new PlayerDao();
List<Player> list = dao.getPlayer();
for(Player player : list) {
	out.print(player.getPlayerID()+" ");
	out.print(player.getNAME()+" ");
	out.print(player.getNATION()+" ");
	out.print(player.getPOSITION()+" ");
	out.print(player.getBIRTH()+" ");
	out.print(player.getCLUB()+" ");
	out.print(player.getBACKNO()+" ");
	out.println(player.getPHOTO());
	}
%>
</body>
</html>