<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.or.connect.dbsprojectDto.Goods"%>
<%@ page import="kr.or.connect.dbsprojectDao.GoodsDao"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>

<%

    
	List<Goods> uniformlist = new GoodsDao().getUniform();
	List<Goods> balllist = new GoodsDao().getball();
	List<Goods> masklist = new GoodsDao().getmask();
	List<Goods> mugcuplist = new GoodsDao().getmugcup();
	List<Goods> baglist = new GoodsDao().getbag();
	
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

<link rel="stylesheet" href="css/demo.css">

  <link rel="stylesheet" href="css/style2.css">


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
								<li><a href="clubs.jsp" class="nav-link">Clubs</a></li>
								<li><a href="schedule.jsp" class="nav-link">schedule</a></li>
								<li><a href="matches.jsp" class="nav-link">results</a></li>
								<li class="active"><a href="goods.jsp" class="nav-link">Goods</a></li>
								<li><a href="cart.jsp" class="nav-link">Cart</a></li>
								<li><a href="purchaselist.jsp" class="nav-link">Purchase list</a></li>
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
            <h1 class="text-white">Goods</h1>
            <p>EPL Goods</p>
          </div>
        </div>
      </div>
    </div>

	
		<div style = "background-color : white; padding-top: 30px;" class="container2">
		<div class = "conditions">
		<p style = "color : black"> Filter : <button id="All" type="button" class="btn btn-primary py-2 px-2 mr-2">ALL</button>
			<button id="Uniform" type="button" class="btn btn-primary py-2 px-2 mr-2">Uniform</button>
			<button id="Ball" type="button" class="btn btn-primary py-2 px-2 mr-2">ball</button>
			<button id="Mask" type="button" class="btn btn-primary py-2 px-2 mr-2">mask</button>
			<button id="Mugcup" type="button" class="btn btn-primary py-2 px-2 mr-2">mugcup</button>
			<button id="Bag" type="button" class="btn btn-primary py-2 px-2 mr-2">bag</button>
			</p>
		</div>
		<br>
	<% if (userID != null) {%>
	<div id = "form1" class = "row">
		<% for(int i = 0;i < uniformlist.size();i++) {
			Goods goods = uniformlist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="submit" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'">Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ú </small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
	<div id = "form2" class = "row">
		
		<% for(int i = 0;i < balllist.size();i++) {
			Goods goods = balllist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'" >Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ù ¡Ù</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
	<div id = "form3" class = "row">
		
		<% for(int i = 0;i < masklist.size();i++) {
			Goods goods = masklist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'" >Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ù</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
	<div id = "form4" class = "row">
		
		<% for(int i = 0;i < mugcuplist.size();i++) {
			Goods goods = mugcuplist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'" >Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ù</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
	<div id = "form5" class = "row">
		
		<% for(int i = 0;i < baglist.size();i++) {
			Goods goods = baglist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'">Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ú</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
       <%} %>
       <%if (userID == null){ %>
       <div id = "form1" class = "row">
		<% for(int i = 0;i < uniformlist.size();i++) {
			Goods goods = uniformlist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" data-toggle="modal" data-target="#loginModal">Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ú </small>
              </div>
            </div>
          </div>
          
          <%} %>
        </div>
	<div id = "form2" class = "row">
		
		<% for(int i = 0;i < balllist.size();i++) {
			Goods goods = balllist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'" >Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ù ¡Ù</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
	<div id = "form3" class = "row">
		
		<% for(int i = 0;i < masklist.size();i++) {
			Goods goods = masklist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'" >Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ù</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
	<div id = "form4" class = "row">
		
		<% for(int i = 0;i < mugcuplist.size();i++) {
			Goods goods = mugcuplist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'" >Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ù</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
	<div id = "form5" class = "row">
		
		<% for(int i = 0;i < baglist.size();i++) {
			Goods goods = baglist.get(i);%>
          <div class="col-lg-3 col-md-4 mb-3">
            <div class="card h-100">
              <img class="card-img-top" src="images/goods/<%=goods.getGOODSPHOTO()%>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=goods.getGOODSNAME() %></a>
                </h4>
                <p class="card-text">Price(£Ü) : <%=goods.getGOODSPRICE() %> </p>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" >Buy Now</button>
                <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'cartAction.jsp?goodsID=<%=goods.getGOODSID() %>&userID=<%=userID %>'">Add to Cart</button>
              </div>
              <div class="card-footer">
                <small class="text-muted">¡Ú ¡Ú ¡Ú ¡Ú ¡Ú</small>
              </div>
            </div>
          </div>
          <%} %>
        </div>
        </div>
	    
       <%} %>
	



		<footer class="footer-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>News</h3>
							<ul class="list-unstyled links">
								<li><a href="#">All</a></li>
								<li><a href="#">Club News</a></li>
								<li><a href="#">Media Center</a></li>
								<li><a href="#">Video</a></li>
								<li><a href="#">RSS</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Tickets</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Online Ticket</a></li>
								<li><a href="#">Payment and Prices</a></li>
								<li><a href="#">Contact &amp; Booking</a></li>
								<li><a href="#">Tickets</a></li>
								<li><a href="#">Coupon</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Matches</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Standings</a></li>
								<li><a href="#">World Cup</a></li>
								<li><a href="#">La Lega</a></li>
								<li><a href="#">Hyper Cup</a></li>
								<li><a href="#">World League</a></li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Social</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Twitter</a></li>
								<li><a href="#">Facebook</a></li>
								<li><a href="#">Instagram</a></li>
								<li><a href="#">Youtube</a></li>
							</ul>
						</div>
					</div>

				</div>

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
			</div>
		</footer>



	</div>
	<!-- .site-wrap -->
	

	


	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script>
$(document).ready(function(){
	
  $("#All").click(function(){
	$("#form1, #form2, #form3, #form4, #form5").show();
  });
  $("#Uniform").click(function(){
	$("#form1").show();
    $("#form2, #form3, #form4, #form5").hide();
  });
  $("#Ball").click(function(){
	$("#form2").show();
    $("#form1, #form3, #form4, #form5").hide();
  });
  $("#Mask").click(function(){
		$("#form3").show();
	    $("#form1, #form2, #form4, #form5").hide();
	  });
  $("#Mugcup").click(function(){
		$("#form4").show();
	    $("#form1, #form2, #form3, #form5").hide();
	  });
  $("#Bag").click(function(){
		$("#form5").show();
	    $("#form1, #form2, #form3, #form4").hide();
	  });
});
</script>

 

</body>

</html>