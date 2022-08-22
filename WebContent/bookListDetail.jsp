<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookListDetail.jsp</title>
<style type="text/css">
	#bookDetailArea {
		grid-area: main;
		width: 1000px;
		margin-left: 9%;
		margin-top: 40px;
	}
	#bookDetailTable {
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
		
			<!-- bookDetail Area -->
			<div id="bookDetailArea">
			<h2>"책 제목"</h2>
				<div class="card">
					<table id="bookDetailTable">
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
				</div>
			</div> <!-- end bookDetail Area -->
			
			<button id="gotoListBtn" class="btn btn-info">목록으로</button>
			
		</div> <!-- end Contents -->
	</div> <!-- end Page Container -->
</body>
</html>