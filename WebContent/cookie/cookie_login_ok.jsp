<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String ch = request.getParameter("idCheck");
	
	/*
		1.아이디,비밀번호를 받습니다
		2.id = abc,pw =1234 로그인 성공 , (user_id, id)를저장하는 쿠키를 생성,cookie_welcome페이지로 리다이렉트 
		3.아이디와 비밀번호가 다르다면, 다시 로그인 페이지로 리다이렉트
		4.welcome페이지에서는 쿠키값을꺼내서 id님 환영합니다 출력
		
	*/
	if(id.equals("abc")&&pw.equals("1234")){
		Cookie cookie =new Cookie("user_id",id);
		//cookie.setMaxAge(20);
		response.addCookie(cookie);

		if(ch !=null){
			Cookie cookie2 =new Cookie("id_Check",id);
			cookie2.setMaxAge(5);
			response.addCookie(cookie2);
		}
		response.sendRedirect("cookie_welcome.jsp");
	}else{
		
		response.sendRedirect("cookie_login.jsp");
	}
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>