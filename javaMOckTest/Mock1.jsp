<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%
    Enumeration en=request.getParameterNames();
	
	while(en.hasMoreElements())
	{
		String pName=(String)enm.nextElement();
		String[] pvalues=request.getParameterValues(pName);
		for(int i=0;i<pValues.length;i++)
		{
			out.println(pValues[i]);
		}
		out.println("<br>")
	}
int count=0;
/*
if((request.getParameter("q1").equals("memory address of allocated memory of object"))
    {
		count++;
	}
	if((request.getParameter("q2").equals("class"))
    {
		count++;
	}

if((request.getParameter("q3").equals("new"))
    {
		count++;
	}

if((request.getParameter("q4").equals("Every class must contain a main() mathod"))
    {
		count++;
	}

if((request.getParameter("q5").equals("Box obj=new Box();"))
    {
		count++;
	}

if((request.getParameter("q6").equals("Polymorphism"))
    {
		count++;
	}

if((request.getParameter("q7").equals("default"))
    {
		count++;
	}
if((request.getParameter("q8").equals("$_myvar"))
    {
		count++;
	}

if((request.getParameter("q9").equals(""X extends Y" is correct if X and Y are either both classes and Y is a class."))
    {
		count++;
	}

if((request.getParameter("q10").equals("instanceof operator"))
    {
		count++;
	}
  */
  out.println(count);
%>
</body>
</html>