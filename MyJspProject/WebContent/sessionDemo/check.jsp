<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("uname");
			String pwd = request.getParameter("upwd");
			if(name.equals("zs") && pwd.equals("abc")){
				session.setAttribute("uname",name);
				session.setAttribute("upwd",pwd);
				System.out.println("sessionID"+session.getId());
				Cookie cookie = new Cookie("uname",name);
				response.addCookie(cookie);
				
				//session.setMaxInactiveInterval(10);
				
				request.getRequestDispatcher("welcome.jsp").forward(request,response);
			}else
			{
				response.sendRedirect("login.jsp");
			}
		%>
</body>
</html>