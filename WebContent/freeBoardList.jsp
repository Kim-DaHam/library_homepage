<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>freeBoardList.jsp</title>
<style type="text/css">
	#searchBar nav {
		width: 380px;
		border-radius: 15px;
		margin-left: 62%;
		margin-bottom: 10px;
	}
	#searchBar nav form{
		margin-left:3%;
	}
	#searchBarInput {
		width: 250px;
	}
	.freeBoardListArea {
		grid-area: main;
		width: 1000px;
		margin-left: 7%;
		margin-bottom: 20px;
	}
	#freeListTable {
		width: 900px;
		margin: 20px auto;
  		padding: 10px;
		text-allign: center;
	}
	#writefreeBoardBtn {
		width: 110px;
		height:45px;
		margin-left: 81%;
	}
</style>
</head>
<body>
	<!-- Page Container -->
	<div id="pageContainer">
		<!-- Contents -->
		<div id="Content">
				  
		  <!-- bookList Area -->
		  <div class="freeBoardListArea">
			  <h2>자유게시판</h2>
			  <div><p style="float:left;">총 " " 건의 자료가 있습니다. (1/50페이지)</p>
			  <!-- searchBar -->
			  <div id="searchBar">
				  <nav class="navbar navbar-expand-sm bg-light navbar-light">
				    <form class="form-inline" action="/action_page.php">
				      <input class="form-control mr-sm-2" type="text" placeholder="게시글 검색" id="searchBarInput">
				      <button class="btn btn-success" type="submit">검색</button>
				    </form>
				  </nav>
			  </div><!-- end searchBar --></div>
			  
			  <div class="card" style="text-align:center;">		  
			  <table class="table table-hover" id="freeListTable">
			    <thead>
			      <tr>
			        <th>번호</th>
			        <th>제목</th>
			        <th>첨부</th>
			        <th>작성자</th>
			        <th>등록일</th>
			        <th>조회</th>
			      </tr>
			    </thead>
			    <tbody>
			      
			    </tbody>
			  </table>
			</div>
		</div> <!-- end bookList Area -->
		
		<button id="writefreeBoardBtn" class="btn btn-info" onclick="location.href='freeBoardWrite.jsp'">글쓰기</button>
		
		<!-- Pagination -->
		<ul id="pagination" class="pagination justify-content-center" style="margin:20px 0">
		  <li class="page-item">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				  
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
		  </li>
		</ul>
		
		</div> <!-- end Contents -->
		<!-- Footer -->
		<footer class="w3-container w3-center w3-margin-top" style="background-color:lightgray;">
		  <p style="margin-top:10px;">금오공과대학교 김다함 mini Project</p>
		  <p>2022-08-24-화요일</p>
		</footer>
	</div> <!-- end Page Container -->
</body>
</html>