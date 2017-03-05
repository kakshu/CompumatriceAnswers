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
pst=con.prepareStatement("update users set password=?,fname=?,lname=?,phone=?,email=?,location=? where username=?");

pst.setString(1,pass);
pst.setString(2,fnm);
pst.setString(3,lnm);
pst.setString(4,mob);
pst.setString(5,email);
pst.setString(6,loc);
pst.setString(7,unm);
success=pst.executeUpdate();
if(success>0)
                    {
        %>    
        <tr><td><h2>User Data updated successfully !!</h2></td></tr>
        <tr></tr><br>
        <tr><td><a href="showUsers.jsp">Show All Records >></a></td></tr>
        <tr></tr>
        <%
        }
}
catch (Exception ex)
                       {

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
