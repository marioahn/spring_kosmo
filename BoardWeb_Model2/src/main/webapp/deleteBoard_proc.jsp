<%@ page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@ page import="com.springbook.biz.board.BoardVO"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
/* 	// 1. 사용자 입력 정보 추출
	// request.setCharacterEncoding("EUC-KR"); 필요x
	String seq = request.getParameter("seq");
	
	// 2. DB연동 처리
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq)); // 입력값은 string일테니, Int화 꼭해줘야 할듯!
	
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.deleteBoard(vo);
	
	// 3. 화면 네비게이션
	response.sendRedirect("getBoardList.jsp"); */
%>