<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@page contentType="text/html; charset=EUC-KR"%>

<%
	/* // 세션에 저장된 게시글 정보 꺼내기
	// BoardVO board = (BoardVO) session.getAttribute("board");
	// 여기 주석하고, 대신 EL문법으로 ㄱㄱ
	*/
%>

<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose/dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글 상세</title>
<link rel="stylesheet" href="resources/board_styles.css">
</head>
<body>
	<center>
	<h1>글 상세</h1>
	<a href="logout.do">Log-Out</a>
	<hr>
	<form action="updateBoard.do" method="post">
	<%-- <input name="seq" type="hidden" value="<%= board.getSeq() %>" />
		위 코드 대신에 아래 EL로! 자바코드 제거~ 더 깔끔해보이긴 하다
	--%>
	<!-- pk인 seq로 db에서 찾을거니까! -->
	<input name="seq" type="hidden" value="${board.seq}" />
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td bgcolor="orange" width="70">제목</td>
			<td align="left"><input name="title" type="text" value="${board.title}"/></td>
		</tr>
		<tr>
			<td bgcolor="orange">작성자</td>
			<td align="left">${board.writer}></td>
		</tr>
		<tr>
			<td bgcolor="orange">내용</td>
			<td align="left"><textarea name="content" cols="40" rows="10">${board.content}</textarea></td>
		</tr>
		<tr>
			<td bgcolor="orange">등록일</td>
			<td align="left">${board.regDate}</td>
		</tr>
		<tr>
			<td bgcolor="orange">조회수</td>
			<td align="left">${board.cnt}</td>
		</tr>
		<tr>
			<td bgcolor="orange">첨부 파일</td>
			<%-- <td align="left"><a href="C:/Users/A/1-eclipse-workspace/sts/work_space3/upload/boarduploadfile/${board.fileName}">${board.fileName}</a></td> --%>
			<td align="left"><a href="resources/upload/boardUploadFile/${board.fileName}">${board.fileName}</a></td>
			
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글 수정"/>
			</td>
		</tr>
	</table>
	</form>
	<hr>
	<a href="www.google.com">테스트</a>
	<a href="insertBoard.jsp">글 등록</a>&nbsp;&nbsp;&nbsp;
	<a href="deleteBoard.do?seq=${board.seq}">글 삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.do">글 목록</a>
	</center>
</body>
</html>