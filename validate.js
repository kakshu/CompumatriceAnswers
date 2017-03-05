/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validateForm()
{
var fnm=document.forms["frm"]["fnm"].value;
var lnm=document.forms["frm"]["lnm"].value;
var fnmin=document.forms["frm"]["fnm"];
var lnmin=document.forms["frm"]["lnm"];

var ph=document.forms["frm"]["phn"].value;
var phin=document.forms["frm"]["phn"];
var pass=document.forms["frm"]["passwd"].value;
var cpass=document.forms["frm"]["conpasswd"].value;
var cpassin=document.forms["frm"]["conpasswd"];
var re = new RegExp("[a-zA-Z]+");

if (pass!==cpass)
  {
  alert("Passwords Dont match!");
  cpassin.focus();
  return false;
  }

if(!re.test(fnm))
  {
  alert("Invalid first name!");
  fnmin.focus();
  return false;
  }
if(!re.test(lnm))
  {
  alert("Invalid last name!");
  lnmin.focus();
  return false;
  }
  
if (ph===null || ph==="")
  {
  alert("Mobile No. must be filled out");
  ph.focus();
  return false;
  }
  
if(isNaN(ph)){ 
                alert("Only Digits are allowed in mobile number!"); 
                phin.focus(); 
                return false; 
                }
if(ph.length<10){ 
                alert("Please enter 10 digit mobile number!"); 
                phin.focus(); 
                return false; 
                }
 }
 
 
  function deleteUser(unm)
            {
var r=confirm("Do you really want to delete this record ?");
if (r==true)
  {
  url="deleteUser.jsp";
window.location=url+"?unm="+unm;
  }
else
  {

  }
}

function editUser(unm)
            {

url="editUser.jsp";
window.location=url+"?unm="+unm;
  }