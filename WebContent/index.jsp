<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap4 CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- w3schools stylesheet -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">

<style type="text/css">
	#pageContainer {
		max-width:1200px;
		margin: 0 auto;	
	}
	#menuBarContainer {
		max-width:1200px;
		margin: 0 auto;	
	}
	.w3-top{
		height: 100px;
		background-color: white;
		margin-top: 20px;
	}
	#Logo {
		width: 150px;
	}
	#menuBar {
		height: 70px;
		margin-top: 45px;
		margin-left: 10px;
		border-radius: 15px;
	}
	#menuBar div {
		margin: 7px 37px 5px 37px;
	}
	.nav-item {
		font-size: 20px;
	}
	#Content{
		max-width:1200px;
		align: center;
		margin-top:200px;
		margin-bottom:80px;
	}
	.grid-container {
	  display: grid;
	  grid-template-areas:
	    'header header header header header header'
	    'menu main main main right right'
	    'menu footer footer footer footer footer';
	  gap: 20px;
	}
</style>

</head>
<body>
	<%!
	   Connection CN; //DB서버연결정보,명령어생성할때 참조 
	   Statement ST, ST3; //ST=CN.createStatement()
	   PreparedStatement PST; //PST=CN.prepareStatment(sql)
	   CallableStatement CS; //CS=CN.callableStatement(sql)
	   ResultSet RS, RS3; //조회한결과를 RS기억  RS.next( )
	 
	   String msg, msg3; //msg="쿼리문기술"
	   int sabun; // 전화번호 
	   String name, title, pwd, phone, email, content, addr1, addr2; //이름, 제목, 패스워드, 이메일, 주소
	   String url, file, size;
	   java.util.Date Gnalja; //날짜
	   int Gtotal=27, Stotal=7, Rtotal=0; 
	   int Rnum; // 댓글의 num필드기억
	   int Rrn; // 댓글의 rownum필드기억
	   String Rdata;
	 %>
	 
	 <%
	   try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		CN=DriverManager.getConnection(url,"system", "qazwsx311");
		//System.out.println("db연결 성공했습니다 00-00-00요일  2강의장");
	   }catch(Exception ex){System.out.println("db에러:"+ex);}
	 %>

	<!-- menuBar Container -->
	<div id="menuBarContainer">
		<!-- NavBar -->
		<div class="w3-top">
		<div class="w3-row">
			<div class="w3-col s1">
				<a href="main.jsp">
					<img id="Logo" src="./images/libraryLogo.png" alt="Logo">
				</a>
			</div>
			<div class="w3-col s6">
				<div class="w3-row w3-padding w3-light-blue" id="menuBar">
				    <div class="w3-col s2">
				      <a href="noticeBoardList.jsp" class="w3-button w3-block w3-white">공지사항</a>
				    </div>
				    <div class="w3-col s2">
				      <a href="bookList.jsp" class="w3-button w3-block w3-white">도서목록</a>
				    </div>
				    <div class="w3-col s2">
				      <a href="freeBoardList.jsp" class="w3-button w3-block w3-white">게시판</a>
				    </div>
				    <div class="w3-col s2">
				      <a href="bookApplication.jsp" class="w3-button w3-block w3-white">도서신청</a>
				    </div>
			  </div>
				</div>
		</div></div> <!-- end NavBar -->
	</div> <!-- end menuBar Container -->
</body>
</html>