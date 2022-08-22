<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookList.jsp</title>
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
	.bookListArea {
		grid-area: main;
		width: 1000px;
		margin-left: 7%;
		margin-bottom: 40px;
	}
	#bookListTable {
		width: 900px;
		margin: 20px auto;
  		padding: 10px;
		text-allign: center;
	}
	#pagination{
		grid-area: footer;
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
				  
				  <!-- bookList Area -->
				  <div class="bookListArea">
					  <h2>"도서 제목" 검색 결과 / 인기 도서 목록 / 신규 도서 목록</h2>
					  <div class="card" style="text-align:center;">		  
					  <table class="table table-hover" id="bookListTable">
					    <thead>
					      <tr>
					        <th></th>
					        <th>도서명</th>
					        <th>저자</th>
					        <th>출판사</th>
					        <th>위치</th>
					      </tr>
					    </thead>
					    <tbody>
					      
					    </tbody>
					  </table>
					</div>
				</div> <!-- end bookList Area -->
				
				<!-- Pagination -->
				<ul id="pagination" class="pagination justify-content-center" style="margin-top:0px; margin-bottom:50px;">
				  <li class="page-item">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						  
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
				  </li>
				</ul>
			</div> <!-- end Main Contents -->
		
		<!-- Footer -->
		<footer class="w3-container w3-center w3-margin-top" style="background-color:lightgray;">
		  <p style="margin-top:10px;">금오공과대학교 김다함 mini Project</p>
		  <p>2022-08-24-화요일</p>
		</footer>
	</div> <!-- end Page Container -->
</body>
</html>