<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>freeBoardDetail.jsp</title>
<style type="text/css">
	#freeDetailArea {
		grid-area: main;
		width: 1000px;
		margin-left: 9%;
		margin-top: 40px;
	}
	#freeDetailTable {
		width: 900px;
		border: 4px solid black;
		border-radius: 15px;
		margin: 20px auto;
  		padding: 10px;
		text-allign: center;
	}
	#freeBoardReplyArea {
		grid-area: main;
		width: 1000px;
		margin-left: 9%;
		margin-top: 40px;
	}
	#freeBoardReplyTable {
		width: 900px;
		margin: 20px auto;
  		padding: 10px;
		text-allign: center;
	}
	tr, td {
		border: 2px solid lightgray;
		padding: 10px;
	}
	#gotoListBtn {
		width: 150px;
		height: 60px;
		margin: 10px;		
	}
	#gotoPreviousBtn, #gotoNextBtn {
		width: 120px;
		height: 60px;		
		margin: 10px;
	}
	#btnPack {
		margin: auto;
		width: 38%;
		margin-top: 25px;
	}
	ul {
		list-style: none;
		padding: 0;
		margin: 0;
	}
	ul li {
		float: left;
		margin-right: 20px;
	}
</style>
</head>
<body>
	<!-- Page Container -->
	<div id="pageContainer">
		<!-- Contents -->
		<div id="Content">
		
			<!-- freeBoardDetail Area -->
			<div id="freeDetailArea">
			<h2>자유게시판</h2>
				<div class="card">
					<table id="freeDetailTable">
						<tr><td>글 제목</td></tr>
						<tr>
							<td>
							<ul>
								<li>작성자: |</li>
								<li>작성 날짜: |</li>
								<li>조회수: </li>
							</ul>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">수정하기</a>
								<a href="#">삭제하기</a>
							</td>
						</tr>
						<tr><td>글 내용</td></tr>
					</table>
				</div>
			</div> <!-- end freeBoardDetail Area -->
			
			<!-- freeBoard reply Area -->
			<div id="freeBoardReplyArea">
				<div class="card">
				<div class="card-body">
					<p>댓글 수 0 개<p>
					<table id="freeBoardReplyTable">
						<tr>
							<td>user01</td>
							<td>어쩌고 저쩌고 재밌네요</td>
							<td>
								<a href="#">삭제하기</a>
							</td>
						</tr>
					</table>
					
					<hr style="width:900px; margin-left:3%;">
					
					<div class="card">
						<div class="card-body">
						  <label for="comment">Comment:</label>
							<div class="form-group">
							  <textarea class="form-control" rows="2" id="comment" style="float:left; width:800px;"></textarea>
							  <button class="btn btn-info" style="width:90px; height:58px;margin-left:15px">댓글 등록</button>
							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
			<!-- end freeBoard reply Area -->
			
			<div id="btnPack">
				<button id="gotoPreviousBtn" class="btn btn-info" style="float:left;">이전 글</button>
				<button id="gotoListBtn" class="btn btn-info" style="float:left;">목록으로</button>
				<button id="gotoNextBtn" class="btn btn-info">다음 글</button>
			</div>
			
		</div> <!-- end Contents -->
	</div> <!-- end Page Container -->
</body>
</html>