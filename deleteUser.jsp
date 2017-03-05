<%-- 
    Document   : deleteUser
    Created on : Mar 4, 2017, 2:45:21 PM
    Author     : Akki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mypack.*"%>
<%@page import="java.sql.*"%>

        <%
PreparedStatement pst;
Connection con;
int cnt=0;     
String username;
username=request.getParameter("unm");
try
{
Class.forName("com.mysql.jdbc.Driver");
DBConnector dbc=new DBConnector();
con=DriverManager.getConnection(dbc.getConstr());

pst=con.prepareStatement("delete from users where username=?;");
pst.setString(1,username);
cnt=pst.executeUpdate();
if(cnt>0)
       {
           %><jsp:forward page="showUsers.jsp"/><%
}
con.close();
}
catch(Exception ex)
               {
    out.print(ex); 
}
        %>
