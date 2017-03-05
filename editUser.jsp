<%-- 
    Document   : editUser
    Created on : Mar 4, 2017, 2:52:46 PM
    Author     : Akki
--%>


<%@page import="java.sql.*"%>
<%@page import="mypack.*" %>

<html>
    <head> 
<script src ="validate.js"></script>

</HEAD>
<BODY BGCOLOR="wheat">
    
<CENTER>
    <FORM name="frm" method="post" action="updateUser.jsp" onsubmit="return validateForm()">
<font COLOR="#660099"><h1>User Details</h1></font><br>
         <table width="450px" align="center">
  
        <%
            
        String usernm=request.getParameter("unm");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
        String fname="",lname="",phone="",unm="",pass="",email="",loc="";
        int cnt=0;
        Class.forName("com.mysql.jdbc.Driver");
        DBConnector dbc=new DBConnector();
        con=DriverManager.getConnection(dbc.getConstr());
		pst = con.prepareStatement("select  * from users where username =?;");
                pst.setString(1,usernm);
		rs=pst.executeQuery();
		                            
		while(rs.next())
		{
                    cnt++;
                unm =rs.getString("username");
                pass = rs.getString("password");
		fname=rs.getString("fname");
		lname=rs.getString("lname");
		phone=rs.getString("phone");
	        email=rs.getString("email");
                loc = rs.getString("location");
                

%>
 <th><h1>Registration Form</h1><hr><br></th>
 <tr><td>UserName</td><td><input type="text" name="unm" value=<%=unm%> readonly></td></tr>
    <tr><td>Password</td><td><input type="password" name="passwd" value=<%=pass%> required/></td></tr>
    <tr><td>Confirm Password</td><td><input type="password" name="conpasswd" value=<%=pass%> required/></td></tr>
    <tr><td>First Name</td><td><input type="text" name="fnm" value=<%=fname%> required/></td></tr>
    <tr><td>Last Name</td><td><input type="text" name="lnm" value=<%=lname%> required/></td></tr>
    <tr><td>Email</td><td><input type="email" name="email" value=<%=email%> required/></td></tr>
    <tr><td>Phone No.</td><td><input type="number" name="phn" value= <%=phone%>> </td></tr>
    <tr><td>Location</td><td><input type="text" name="loc" value=<%=loc%> required/></td></tr>
</table>
 <%
     }
%>
<br>
<div class="but">
<input type="submit" class="button" value="Save"/>
</FORM>
</body>
</html>