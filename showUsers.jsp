<%-- 
    Document   : showUsers
    Created on : Mar 4, 2017, 2:18:39 PM
    Author     : Akki
--%>

<%@page import="java.sql.*"%>
<%@page import="mypack.*" %>

<head>  

 <script src ="validate.js"></script>
</head>
<body BGCOLOR="wheat">
<center>
<font COLOR="#660099"><h1>User Details</h1></font><br><hr><b><br><br><br><br>
    <table width="900px" align="center" border="1" >
         <th bgcolor="#00BFFF"><font color="#fffff"> Sr. No.</th><th bgcolor="#00BFFF"><font color="#fffff">First Name</th><th bgcolor="#00BFFF"><font color="#fffff">Last Name</th><th bgcolor="#00BFFF"><font color="#fffff">Email</th><th bgcolor="#00BFFF"><font color="#fffff">Phone Number</th><th bgcolor="#00BFFF"><font color="#fffff">Location</th><th bgcolor="#00BFFF"></th>
<%
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
        String fname="",lname="",phone="",unm="",email="",loc="";
        int cnt=0;
        Class.forName("com.mysql.jdbc.Driver");
        DBConnector dbc=new DBConnector();
        con=DriverManager.getConnection(dbc.getConstr());
		pst = con.prepareStatement("select distinct * from users;");
		rs=pst.executeQuery();
		                            
		while(rs.next())
		{
                    cnt++;
                unm =rs.getString("username");
		fname=rs.getString("fname");
		lname=rs.getString("lname");
		phone=rs.getString("phone");
		email=rs.getString("email");
                loc=rs.getString("location");
%>
        <tr><td><%=cnt%></td><td><%=fname%></td><td><%=lname%></td><td><%=email%></td><td><%=phone%></td><td><%=loc%></td><td><a href="JavaScript:editUser('<%=unm%>');">Edit</a>&nbsp; &nbsp;<a href="JavaScript:deleteUser('<%=unm%>');">Delete</a></h4><hr></td></tr>
<tr></tr>
    <%		 
                }
  %>
    </table>
</b><br><br>
    <a class="button" href="index.jsp">Exit</a>
</center>
</body>
</html>
