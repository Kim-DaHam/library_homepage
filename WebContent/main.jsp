<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서관 홈페이지</title>
<style type="text/css">
	#searchBar nav {
		width: 680px;
		border-radius: 15px;
		margin-left:20%;
	}
	#searchBar nav form{
		margin-left:3%;
	}
	#searchBarInput {
		width: 550px;
	}
	.loginArea {
		grid-area: menu;
		width: 220px;
		height: 220px;
	}
	.booksArea {
		grid-area: main;
		width: 650px;
	}
	.boardsArea {
		grid-area: right;
		width: 220px;
	}
	.card {
		margin-top: 15px;
	}
	#inputID, #inputPWD {
		width: 110px;
	}
	#loginBtn {
		margin-top: 15px;
		width: 100px;
	}
	ul {
		list-style:none;
		margin: 0px;
		padding: 0px;
	}
	li {
		float: left;
	}
	img {
		width: 150px;
	}
	.carousel-control-prev-icon, .carousel-control-next-icon{
		background-color: black;
	}
	#miniNoticeListTable {
		width: 600px;
	}
	#miniFreeBoardListTable {
		width: 180px;
	}
</style>
</head>
<body>
	<!-- Page Container -->
	<div id="pageContainer">
		<!-- Contents -->
		<div id="Content">
			<!-- searchBar -->
			<div id="searchBar">
				<nav class="navbar navbar-expand-sm bg-light navbar-light">
				  <form class="form-inline" action="/action_page.php">
				    <input class="form-control mr-sm-2" type="text" placeholder="도서 검색" id="searchBarInput">
				    <button class="btn btn-success" type="submit">검색</button>
				  </form>
				</nav>
			</div><!-- end searchBar -->
		
			<!-- Main Contents -->
			<div class="grid-container" style="margin-top: 45px;">
				<div class="loginArea">
					<div class="card">
					  <div class="card-body">
					  	<p style="margin-bottom:5px;">Login</p>
					  	<form>
						  	아이디 <input type="text" value="" placeholder="ID" id="inputID" style="margin-left:15px;"><br>
						  	비밀번호 <input type="password" value="" placeholder="Password" id="inputPWD">
					  		<button class="btn btn-warning" id="loginBtn">로그인</button>
					  	</form>
					  </div>
					</div>
				</div>
				
				<div class="booksArea">
					<div class="SlideBookList" id="newBooksList">
						<div class="card">
						  <div class="card-body">
						  	<h3>신규 도서</h3>
						  	<div id="demo" class="carousel slide" data-ride="carousel">
								  <!-- The slideshow -->
								  <div class="carousel-inner">
								    <div class="carousel-item active">
								    	<ul>
								    		<li><img src="./images/libraryLogo.png"></li>
								    		<li><img src="./images/libraryLogo.png"></li>
								    		<li><img src="./images/libraryLogo.png"></li>
								    		<li><img src="./images/libraryLogo.png"></li>
								    	</ul> 
								    </div>
								    <div class="carousel-item">
								      <ul>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    	  </ul> 
								    </div>
								    <div class="carousel-item">
								      <ul>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    	  </ul> 
								    </div>
								  </div>
								
								  <!-- Left and right controls -->
								  <a class="carousel-control-prev" href="#demo" data-slide="prev">
								    <span class="carousel-control-prev-icon"></span>
								  </a>
								  <a class="carousel-control-next" href="#demo" data-slide="next">
								    <span class="carousel-control-next-icon"></span>
								  </a>
								</div>
						  </div>
						</div>
					</div>
					<div class="SlideBookList" id="popularBooksList">
						<div class="card">
						  <div class="card-body">
						  	<h3>인기 도서</h3>
						  	<div id="demo2" class="carousel slide" data-ride="carousel">
								  <!-- The slideshow -->
								  <div class="carousel-inner">
								    <div class="carousel-item active">
								    	<ul>
								    		<li><img src="./images/libraryLogo.png"></li>
								    		<li><img src="./images/libraryLogo.png"></li>
								    		<li><img src="./images/libraryLogo.png"></li>
								    		<li><img src="./images/libraryLogo.png"></li>
								    	</ul> 
								    </div>
								    <div class="carousel-item">
								      <ul>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    	  </ul> 
								    </div>
								    <div class="carousel-item">
								      <ul>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    		<li><img src="./images/libraryLogo.png"></li>
							    	  </ul> 
								    </div>
								  </div>
								
								  <!-- Left and right controls -->
								  <a class="carousel-control-prev" href="#demo2" data-slide="prev">
								    <span class="carousel-control-prev-icon"></span>
								  </a>
								  <a class="carousel-control-next" href="#demo2" data-slide="next">
								    <span class="carousel-control-next-icon"></span>
								  </a>
								</div>
						  </div>
						</div>
					</div>
					<div class="miniNoticeBoard">
						<div class="card">
						  <div class="card-body">
						  	<h3>공지사항</h3>
						  	<table class="table table-hover" id="miniNoticeListTable">
							    <thead>
							      <tr>
							        <th>카테고리</th>
							        <th>제목</th>
							        <th>등록일</th>
							        <th>조회</th>
							      </tr>
							    </thead>
							    <tbody>
							      
							    </tbody>
							  </table>
						  </div>
						</div>
					</div>
				</div>
				
				<div class="boardsArea">
					<div class="SlideEventArea">
					  	<h5>이 달의 행사</h5>
						<div class="card">
						  <div class="card-body">
						  <div id="demo3" class="carousel slide" data-ride="carousel">
						  	<!-- The slideshow -->
							  <div class="carousel-inner">
							    <div class="carousel-item active">
							    	<img src="./images/libraryLogo.png">
							    </div>
							    <div class="carousel-item">
						    		<img src="./images/libraryLogo.png">
							    </div>
							    <div class="carousel-item">
						    		<img src="./images/libraryLogo.png">
							    </div>
							  </div>
							
							  <!-- Left and right controls -->
							  <a class="carousel-control-prev" href="#demo3" data-slide="prev">
							    <span class="carousel-control-prev-icon"></span>
							  </a>
							  <a class="carousel-control-next" href="#demo3" data-slide="next">
							    <span class="carousel-control-next-icon"></span>
							  </a>
							</div>
						  </div>
						</div>
					</div>
					<div class="miniFreeBoard">
					  	<h5>자유게시판</h5>
						<div class="card">
						  <div class="card-body">
						  	<h5>인기 글</h5>
						  	<table class="table table-hover" id="miniFreeBoardListTable">
							    <thead>
							      <tr>
							        <th>제목</th>
							      </tr>
							    </thead>
							    <tbody>
							      
							    </tbody>
							  </table>
						  </div>
						</div>
					</div>
				</div>
			
			</div>
		
		</div> <!-- end Contents -->
		
		<!-- Footer -->
		<footer class="w3-container w3-center w3-margin-top" style="background-color:lightgray;">
		  <p style="margin-top:10px;">금오공과대학교 김다함 mini Project</p>
		  <p>2022-08-24-화요일</p>
		</footer>
		
	</div> <!-- end Page Container -->
</body>
</html>