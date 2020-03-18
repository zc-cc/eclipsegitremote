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
				//response.sendRedirect("success.jsp");
				//页面跳转，请求转发
				request.getRequestDispatcher("success.jsp").forward(request,response);
			}else
			{
				out.print("用户名或密码有误！");
			}
		%>
</body>
</html>