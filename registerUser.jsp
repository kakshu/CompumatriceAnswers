<%-- 
    Document   : registerUser
    Created on : Mar 4, 2017, 1:47:49 PM
    Author     : Akki
--%>

<%@page import="java.sql.*"%>
<%@page import="mypack.*" %>
<html>
   <body BGCOLOR="wheat">
<table align="center" cellspacing="8">
    <tr></tr>
<%
PreparedStatement pst;
Connection con;
String unm,fnm,lnm,pass,email,mob,loc;
int success=0;
unm=request.getParameter("unm");
fnm=request.getParameter("fnm");
lnm=request.getParameter("lnm");
pass=request.getParameter("passwd");
email=request.getParameter("email");
mob=request.getParameter("phn");
loc=request.getParameter("loc");
try
{
Class.forName("com.mysql.jdbc.Driver");
DBConnector dbc=new DBConnector();
con=DriverManager.getConnection(dbc.getConstr());
pst=con.prepareStatement("insert into users values(?,?,?,?,?,?,?);");
pst.setString(1,unm);
pst.setString(2,pass);
pst.setString(3,fnm);
pst.setString(4,lnm);
pst.setString(5,mob);
pst.setString(6,email);
pst.setString(7,loc);
success=pst.executeUpdate();
if(success>0)
                    {
        %>    
        <tr><td><h2>Registration Successful !!</h2></td></tr>
        <tr></tr><br>
        <tr><td><a href="showUsers.jsp">Show All Records >></a></td></tr>
        <tr></tr>
        <%
        }
}
catch (Exception ex)
                       {
out.print(ex);
            %>
        <tr><td><h2>Account Already exist !!!</h2></td></tr>
        <tr></tr><br>
        <tr><td><a onclick="history.back();">Click Here</a> to retry</tr>
        <tr></tr>
        <%
                       }
%>
</body>
</table>
</html>

