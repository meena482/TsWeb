  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.a {
        width:30%;
        margin-left:450px;
}



.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<body>
               
               .
<form action="jobs" method="post" name="Postjobs" onsubmit="return(validate());">

<table cellpadding="2" width="20%" bgclr="Red" align="center"
cellspacing="2">


<tr>
<td colspan=2>
<center><font size=4><b>POSTJOBS</b></font></center>
</td>
</tr>

<tr>
<td>Company Name</td>
<td><input type=text name=CompanyName id="CompanyName" size="30"></td>
</tr>

<tr>
<td>Email</td>
<td><input type="text" name="Email" id="Email"
size="30"></td>
</tr>

<tr>
<td>Vacancy</td>
<td><input type="text" name="Vacancy" id="Vacancy"
size="30"></td>
</tr>

<tr>
<td>Skills</td>
<td><input type="text" name="Skills" id="Skills"
size="30"></td>
</tr>



<tr>
<td> Address</td>
<td><input type="text" name="Address"
id="Address" size="30"></td>
</tr>
<tr>
<td>MobileNo</td>
<td><input type="text" name="MobileNo" id="MobileNo" size="30"></td>
</tr>
<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Post" /></td>
<a href="index.html"></a>

</tr>
</table>
</form>  
</body>
</html>  