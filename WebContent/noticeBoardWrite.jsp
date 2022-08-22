<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeBoardWrite.jsp</title>
<style type="text/css">
	#writeNoticeArea {
		grid-area: main;
		width: 1000px;
		margin-left: 9%;
		margin-top: 40px;
	}
	#writeNoticeTable {
		width: 900px;
		border: 4px solid black;
		border-radius: 30px;
		margin: 20px auto;
  		padding: 10px;
		text-allign: center;
	}
	tr, td {
		border: 2px solid black;
		padding: 10px;
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
		
			<!-- writeNotice Area -->
			<div id="writeNoticeArea">
			<h2>공지사항 글쓰기</h2>
				<div class="card">
					<table id="writeNoticeTable">
						<tr>
							<td>
								<select name="category">
								    <option value="" selected>카테고리</option>
								    <option value="공지">공지</option>
								    <option value="행사">행사</option>
								    <option value="기타">기타</option>
								</select>
								제목: <input type=text style="width:500px;">
							</td>
						</tr>
						<tr>
							<td>첨부파일: <input type=file></td>
						</tr>
						<tr>
							<td>글 내용: <input type=textarea style="width:900px; height:300px;"></td>
						</tr>
					</table>
				</div>
			</div> <!-- end writeNotice Area -->
			
			<button id="gotoListBtn" class="btn btn-info">등록하기</button>
			
		</div> <!-- end Contents -->
	</div> <!-- end Page Container -->
</body>
</html>