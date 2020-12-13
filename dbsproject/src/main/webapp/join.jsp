<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="css/new_main.css">

        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">

        
    </head>
    <body>
        <!-- header (상단바, 로고) -->
        <div id="header">
            <div class="site-navbar py-4" role="banner">

                <div class="container">
                  <div class="d-flex align-items-center">
                    <div class="site-logo">
                      <a href="index.html">
                        <img src="images/Premier_League-Logo.wine.png" alt="Logo">
                      </a>
                    </div>
                    <div class="ml-auto">
                      <nav class="site-navigation position-relative text-right" role="navigation">
                        <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                          	<li><a href="main.jsp" class="nav-link">Home</a></li>
						  	<li><a href="players.jsp" class="nav-link">Players</a></li>
							<li><a href="clubs.jsp" class="nav-link">Clubs</a></li>
							<li><a href="schedule.jsp" class="nav-link">schedule</a></li>
							<li><a href="matches.jsp" class="nav-link">results</a></li>
							<li><a href="goods.jsp" class="nav-link">Goods</a></li>
                        </ul>
                      </nav>
          
                      <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right text-white"><span class="icon-menu h3 text-white"></span></a>
                    </div>
                  </div>
                </div>
          
            </div>
            
            
        </div>
        <h2>Sign Up</h2>

        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">
                <form id="join-form" method="post" action="http://localhost:8080/dbsproject/JoinAction">
                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">ID</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="userID" class="int" maxlength="20" required>
                        
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">Password</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="images/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">Password check</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" name="userPassword" class="int" maxlength="20">
                        <img src="images/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">Name</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="userName" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">Birth</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" name="userBirthYear" maxlength="4" placeholder="Year(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" name="userBirthMonth" class="sel">
                                    <option>Month</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" name="userBirthDay" maxlength="2" placeholder="Day">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

            
                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">E-mail</label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" name="userEmail" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>Sign up</span>
                    </button>
                </div>
                </form>

            
            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="js/join.js"></script>
  
    </body>
</html>