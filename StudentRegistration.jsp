<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<body>
<form action="Add" name="AddStudentDetails" onsubmit="return(validate());">

<table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=4><b>AddStudentDetails</b></font></center>
</td>
</tr>

<tr>
<td>Name</td>
<td><input type=text name=textnames id="textname" size="30"></td>
</tr>

<tr>
<td>Father Name</td>
<td><input type="text" name="fathername" id="fathername"
size="30"></td>
</tr>
<tr>
<td>Postal Address</td>
<td><input type="text" name="paddress" id="paddress" size="30"></td>
</tr>

<tr>
<td>Personal Address</td>
<td><input type="text" name="personaladdress"
id="personaladdress" size="30"></td>
</tr>

<tr>
<td>Sex</td>
<td><input type="radio" name="sex" value="male" size="10">Male
<input type="radio" name="sex" value="Female" size="10">Female</td>
</tr>

<tr>
<td>City</td>
<td><select name="City">
<option value="-1" selected>select..</option>
<option value="New Delhi">NEW DELHI</option>
<option value="Mumbai">MUMBAI</option>
<option value="Goa">GOA</option>
<option value="Patna">PATNA</option>
</select></td>
</tr>

<tr>
<td>Course</td>
<td><select name="Course">
<option value="-1" selected>select..</option>
<option value="B.Tech">B.TECH</option>
<option value="MCA">MCA</option>
<option value="MBA">MBA</option>
<option value="BCA">BCA</option>
</select></td>
</tr>

<tr>
<td>District</td>
<td><select name="District">
<option value="-1" selected>select..</option>
<option value="Nalanda">NALANDA</option>
<option value="UP">UP</option>
<option value="Goa">GOA</option>
<option value="Patna">PATNA</option>
</select></td>

</tr>

<tr>
<td>State</td>
<td><select Name="State">
<option value="-1" selected>select..</option>
<option value="New Delhi">NEW DELHI</option>
<option value="Mumbai">MUMBAI</option>
<option value="Goa">GOA</option>
<option value="Bihar">BIHAR</option>
</select></td>
</tr>
<tr>
<td>PinCode</td>
<td><input type="text" name="pincode" id="pincode" size="30"></td>

</tr>
<tr>
<td>EmailId</td>
<td><input type="text" name="emailid" id="emailid" size="30"></td>
</tr>

<tr>
<td>DOB</td>
<td><input type="text" name="dob" id="dob" size="30"></td>
</tr>

<tr>
<td>MobileNo</td>
<td><input type="text" name="mobileno" id="mobileno" size="30"></td>
</tr>
<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit Form" /></td>
</tr>
</table>
</form>
<script type="text/javascript">
function validate()
{ 
   if( document.AddStudentDetails.textnames.value == "" )
   {
     alert( "Please provide your Name!" );
     document.AddStudentDetails.textnames.focus() ;
     return false;
   }
   if( document.AddStudentDetails.fathername.value == "" )
   {
     alert( "Please provide your Father Name!" );
     document.AddStudentDetails.fathername.focus() ;
     return false;
   }
   
   if( document.AddStudentDetails.paddress.value == "" )
   {
     alert( "Please provide your Postal Address!" );
     document.AddStudentDetails.paddress.focus() ;
     return false;
   }
   if( document.AddStudentDetails.personaladdress.value == "" )
   {
     alert( "Please provide your Personal Address!" );
     document.AddStudentDetails.personaladdress.focus() ;
     return false;
   }
   if ( ( AddStudentDetails.sex[0].checked == false ) && ( AddStudentDetails.sex[1].checked == false ) )
   {
   alert ( "Please choose your Gender: Male or Female" );
   return false;
   }   
   if( document.AddStudentDetails.City.value == "-1" )
   {
     alert( "Please provide your City!" );
     document.AddStudentDetails.City.focus() ;
     return false;
   }   
   if( document.AddStudentDetails.Course.value == "-1" )
   {
     alert( "Please provide your Course!" );
    
     return false;
   }   
   if( document.AddStudentDetails.District.value == "-1" )
   {
     alert( "Please provide your Select District!" );
    
     return false;
   }   
   if( document.AddStudentDetails.State.value == "-1" )
   {
     alert( "Please provide your Select State!" );
     
     return false;
   }
   if( document.AddStudentDetails.pincode.value == "" ||
           isNaN( document.AddStudentDetails.pincode.value) ||
           document.AddStudentDetails.pincode.value.length != 6 )
   {
     alert( "Please provide a pincode in the format ######." );
     document.AddStudentDetails.pincode.focus() ;
     return false;
   }
 var email = document.AddStudentDetails.emailid.value;
  atpos = email.indexOf("@");
  dotpos = email.lastIndexOf(".");
 if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
 {
     alert("Please enter correct email ID")
     document.AddStudentDetails.emailid.focus() ;
     return false;
 }
  if( document.AddStudentDetails.dob.value == "" )
   {
     alert( "Please provide your DOB!" );
     document.AddStudentDetails.dob.focus() ;
     return false;
   }
  if( document.AddStudentDetails.mobileno.value == "" ||
           isNaN( document.AddStudentDetails.mobileno.value) ||
           document.AddStudentDetails.mobileno.value.length != 10 )
   {
     alert( "Please provide a Mobile No in the format 123." );
     document.AddStudentDetails.mobileno.focus() ;
     return false;
   }
   return( true );
}
		
</script>
</body>
</html>
