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
               <div class="a">
                                 <img src="s.jpg"  style="width:100%;">
               </div>
               
                
               
               
               
               
               .
<form action="Add" method="post" name="AddStudentDetails" onsubmit="return(validate());">

<table cellpadding="2" width="20%" bgclr="Red" align="center"
cellspacing="2">


<tr>
<td colspan=2>
<center><font size=4><b>AddStudentDetails</b></font></center>
</td>
</tr>

<tr>
<td>Student Id</td>
<td><input type=text name=StudentId id="StudentId" size="30"></td>
</tr>

<tr>
<td>Student Name</td>
<td><input type="text" name="StudentName" id="StudentName"
size="30"></td>
</tr>

<tr>
<td>Password</td>
<td><input type="Password" name="Password" id="Password"
size="30"></td>
</tr>

<tr>
<td>College Name</td>
<td><input type="text" name="CollegeName" id="CollegeName"
size="30"></td>
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
<td>Branch</td>
<td><select name="Branch">
<option value="-1" selected>select..</option>
<option value="ECE">ECE</option>
<option value="CSE">CSE</option>
<option value="IT">IT</option>
<option value="EEE">EEE</option>
<option value="ME">ME</option>
<option value="CE">CE</option>
</select></td>
</tr>

<tr>
<td>Year Of Passing</td>
<td><select name="YearOfPassing">
<option value="-1" selected>select..</option>
<option value="2019">2019</option>
<option value="2018">2018</option>
<option value="2017">2017</option>
<option value="2016">2016</option>
<option value="2015">2015</option>
<option value="2014">2014</option>
</select></td>
</tr>

<tr>
<td>CPGA</td>
<td><input type="text" name="CPGA" id="CPGA"
size="30"></td>
</tr>

<tr>
<td>Skills</td>
<td><input type="text" name="Skills" id="Skills"
size="30"></td>
</tr>



<tr>
<td>City</td>
<td><select name="City">
<option value="-1" selected>select..</option>
<option value="New Delhi">NEW DELHI</option>
<option value="Mumbai">BANGLORE</option>
<option value="Goa">CHENNAI</option>
<option value="Patna">HYDERABAD</option>
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


</tr>
<tr>
<td>Email</td>
<td><input type="text" name="Email" id="Email" size="30"></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="Gender" value="male" size="10">Male
<input type="radio" name="Gender" value="Female" size="10">Female</td>
</tr>

<tr>
<td>DOB</td>
<td><input type="text" name="Gender" id="Gender" size="30"></td>
</tr>


<tr>
<td>Permanent Address</td>
<td><input type="text" name="PermanentAddress"
id="PermanentAddress" size="30"></td>
</tr>
<tr>
<td>MobileNo</td>
<td><input type="text" name="MobileNo" id="MobileNo" size="30"></td>
</tr>
<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Add Students" /></td>
<a href="index.html"></a>

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
