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
                          <li class="active"><a href="index.html" class="nav-link">Home</a></li>
                		  <li><a href="matches.html" class="nav-link">Players</a></li>
                	      <li><a href="players.html" class="nav-link">Clubs</a></li>
                	 	  <li><a href="blog.html" class="nav-link">Goods</a></li>
                	 	  <li><a href="contact.html" class="nav-link">Ticketing</a></li>
                	 	  <li><a href="contact.html" class="nav-link">Matches</a></li>
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
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="userID" class="int" maxlength="20" required>
                        
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="images/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" name="userPassword" class="int" maxlength="20">
                        <img src="images/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="userName" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" name="userBirthYear" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" name="userBirthMonth" class="sel">
                                    <option>월</option>
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
                                <input type="text" id="dd" class="int" name="userBirthDay" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

            
                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">이메일</label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" name="userEmail" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>가입하기</span>
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