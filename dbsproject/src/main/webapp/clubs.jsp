<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.or.connect.dbsprojectDto.Club"%>
<%@ page import="kr.or.connect.dbsprojectDao.ClubDao"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<%
	List<Club> clublist = new ClubDao().getClub();
%>
<head>
<title>English Premier League</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/jquery.fancybox.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">

<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">



</head>

<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
%>

	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>


		<header class="site-navbar py-4" role="banner">

			<div class="container">
				<div class="d-flex align-items-center">
					<div class="site-logo">
						<a href="main.jsp"> <img
							src="images/Premier_League-Logo.wine.png" alt="Logo">
						</a>
					</div>
					<div class="ml-auto">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
								<li><a href="main.jsp" class="nav-link">Home</a></li>
								<li><a href="players.jsp" class="nav-link">Players</a></li>
								<li class="active"><a href="clubs.jsp" class="nav-link">Clubs</a></li>
								<li><a href="schedule.jsp" class="nav-link">schedule</a></li>
								<li><a href="matches.jsp" class="nav-link">results</a></li>
								<li><a href="goods.jsp" class="nav-link">Goods</a></li>
								<li><a href="cart.jsp?userID=<%=userID%>" class="nav-link">Cart</a></li>
								<li><a href="purchaselist.jsp?userID=<%=userID%>" class="nav-link">Purchase list</a></li>
							</ul>
						</nav>

						<a href="#"
							class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right text-white"><span
							class="icon-menu h3 text-white"></span></a>
					</div>
				</div>
			</div>
		</header>

		<div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5 mx-auto text-center">
            <h1 class="text-white">Clubs</h1>
            <p>Introduce EPL clubs</p>
          </div>
        </div>
      </div>
    </div>

		<div style = "background-color : white; padding-top: 30px;" class="container2">
			<table class="table table-bordered table-hover"
				style="text-align: center; border: 3px solid #dddddd; margin-top: 20px; margin-left: auto; margin-right: auto; width: 1500px;">
				<thead>
					
					<tr>
						<th style="vertical-align : middle;background-color: #fafafa; color: #000000; width :200px ">Photo</th>
						<th style="vertical-align : middle;background-color: #fafafa; color: #000000; width :250px">Name</th>
						<th style="vertical-align : middle;background-color: #fafafa; color: #000000; width: 250px">Manager</th>
						<th style="vertical-align : middle;background-color: #fafafa; color: #000000; ">Stadium</th>
						<th style="vertical-align : middle;background-color: #fafafa; color: #000000; width: 100px">Founding of Year</th>
					</tr>
				<tbody>
					<%
      	  for(int i = 0;i < clublist.size();i++){
      		  Club club = clublist.get(i);
     				 %>
	
					<tr style = "color: black; font-size:25px; font-weight : bold;">	
						<td><img src = "images/clubs/<%= club.getCLUBPHOTO() %>"/></td>
						<td style = "vertical-align : middle"><%= club.getNAME() %></td>
						<td style = "vertical-align : middle"><%= club.getMANAGER() %></td>
						<td style = "vertical-align : middle"><%= club.getHOMESTADIUM() %></td>
						<td style = "vertical-align : middle"><%= club.getFOUNDINGYEAR() %></td>
					</tr>
					
					
					  <%
      	 }
      %>
				</tbody>
			</table>
		</div>



		<footer class="footer-section">
			

				<div class="row text-center">
					<div class="col-md-12">
						<div class=" pt-5">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="icon-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>

				</div>
			
		</footer>



	</div>
	<!-- .site-wrap -->

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.mb.YTClub.min.js"></script>


	<script src="js/main.js"></script>

</body>

</html>