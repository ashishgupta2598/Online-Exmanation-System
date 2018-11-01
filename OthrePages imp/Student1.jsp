<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.StringWriter" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Portal</title>
<center><h1>Student Portal</h1></center>
</head>
<body>
<%!
  Connection con=null;
  Statement stmt=null;
   String name,password;
   int i;
%>
<%
   name=request.getParameter("Name");
   password=request.getParameter("Password");
 try
   {
	   Class.forName("com.mysql.jdbc.Driver");
	   con=DriverManager.getConnection(              "jdbc:mysql://localhost/StudentProject2","root","ashu2598");
	   
	   String qry="Select * from StuLogin";
	   stmt=con.createStatement();
	   ResultSet results=stmt.executeQuery(qry);
	    i=0;
	   
	   String na,pa;
	   while(results.next())
	   {
	
		   if((name.equals(results.getString("Name")))&&(password.equals(results.getString("Password"))))
		   {
			   i++;
			   out.println("Welcome :"+name);
			   break;
		   } 
	   }
		   if(i==0)
 		   {
              out.println("Please enter correct Username and password");
           }
   }
   catch(Exception e)
   {
	   
   }
   stmt=null;
   String qry="Select * from StudentInfo";
	   stmt=con.createStatement();
	   ResultSet results1=stmt.executeQuery(qry);
	   while(results1.next())
	   {
		   if(name.equals(results1.getString("RollNo")))
		   {
			 %>
             <br>RollNumber:<%=results1.getString("RollNo")%>
                 Name:<%=results1.getString("Name")%>
             <br>FathersName:<%=results1.getString("FathersName")%>
                 Address:<%=results1.getString("Address")%>
             <br>Gender:<%=results1.getString("Gender")%>
                 Branch:<%=results1.getString("Branch")%>
             <br>Sem:<%=results1.getString("Sem")%>
                 MobileNo:<%=results1.getString("MobileNO")%>    
 			   <%
		   }
	   }
                %>


</body>
</html>