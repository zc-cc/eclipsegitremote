<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%="当前项目的虚拟路径："+application.getContextPath()+"</br>" %>
		<%="虚拟路径对应的绝对路径："+application.getRealPath("/MyJspProject")+"</br>" %>

<%!
	public String bookName;
	public void init()
	{
		bookName = "java书";
	}
%>
	====hello index1 你好====
<%
	String name = "zhangsan";
	out.print("<font color='red'>hello.</font>.."+name+"<br/>");
	init();
%>
<%="he<br/>llo..."+bookName %>
</body> 
</html>