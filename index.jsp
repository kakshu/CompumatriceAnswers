<%-- 
    Document   : index
    Created on : Mar 4, 2017, 11:54:39 AM
    Author     : Akki
--%>
<%@page import="java.sql.*"%>
<HTML>
<HEAD>
  
    
<TITLE> Customer Page </TITLE>
<script src ="validate.js"></script>
</HEAD>
<BODY BGCOLOR="wheat">
    
<CENTER>
    <FORM name="frm" method="post" action="registerUser.jsp" onsubmit="return validateForm()">

<table width="450px" align="center">
    <th><h1>Registration Form</h1><hr><br></th>
    <tr><td>UserName</td><td><input type="text" name="unm" required/></td></tr>
    <tr><td>Password</td><td><input type="password" name="passwd"  required/></td></tr>
    <tr><td>Confirm Password</td><td><input type="password" name="conpasswd"  required/></td></tr>
    <tr><td>First Name</td><td><input type="text" name="fnm" required/></td></tr>
    <tr><td>Last Name</td><td><input type="text" name="lnm" required/></td></tr>
    <tr><td>Email</td><td><input type="email" name="email" required/></td></tr>
    <tr><td>Phone No.</td><td><input type="number" name="phn" required/></td></tr>
    <tr><td>Location</td><td><input type="text" name="loc" required/></td></tr>
</table>
<br>
<div class="but">
<input type="submit" class="button" value="Save"/>
<input type="reset" class="button" value="Reset"></div>
<a class="button" href="showUsers.jsp">Show All Users</a>
</FORM>
</BODY>
</HTML>
