<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookApplication.jsp</title>
<style type="text/css">
	#searchBar{
		margin-top: 20px;
		margin-bottom: 20px;
	}
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
	#bookApplicationArea {
		grid-area: main;
		width: 1000px;
		margin-left: 9%;
		margin-top: 40px;
	}
	#bookApplicationTable {
		width: 900px;
		margin: 20px auto;
  		padding: 10px;
		text-allign: center;
	}
	#gotoListBtn {
		width: 150px;
		height: 60px;
		display: block;
		margin-top: 25px;
		margin-left: auto;
		margin-right: auto;
	}
</style>
</head>
<body>
	<!-- Page Container -->
	<div id="pageContainer">
		<!-- Contents -->
		<div id="Content">
		
			<!-- bookApplication Area -->
			<div id="bookApplicationArea">
			<h2>"도서 신청"</h2>
				<div class="card">
					<!-- searchBar -->
					<div id="searchBar">
						<nav class="navbar navbar-expand-sm bg-light navbar-light">
						  <form class="form-inline" action="/action_page.php">
						    <input class="form-control mr-sm-2" type="text" placeholder="도서 검색" id="searchBarInput">
						    <button class="btn btn-success" type="submit">검색</button>
						  </form>
						</nav>
					</div><!-- end searchBar -->
				
					<table id="bookApplicationTable">
						<tr>
							<td rowspan="2">이미지</td>
							<td>책 제목</td>
						</tr>
						<tr>
							<td>
								<ul>
									<li>출판년도</li>
									<li>저자명</li>
									<li>번역가</li>
									<li>출판사</li>
								</ul>
							</td>
						</tr>
						<tr><td>책 소개</td></tr>
					</table>
					<button id="applicateBtn" class="btn btn-warning">신청하기</button>
				</div>
			</div> <!-- end bookApplication Area -->
			
			<button id="gotoListBtn" class="btn btn-info" onclick="location.href='applicated.jsp'">목록으로</button>
			
		</div> <!-- end Contents -->
	</div> <!-- end Page Container -->
</body>
</html>