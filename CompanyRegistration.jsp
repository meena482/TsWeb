<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
  margin-left: 450px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 20%;
  padding: 10px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 15px 15px;
  margin: -10px 0;
  border: none;
  cursor: pointer;
  width: 15%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}

.a {
        width:20%;
        margin-left:500px;
}
</style>
<body>
               <div class="a">
                                 <img src="2.jpg"  style="width:120%;">
               </div>
</style>
</head>
<body>

<form action="CompanyLogin" method="post">
  <div class="container">
    <h1>COMPANY REGISTRATION</h1>
    <p>Please fill in this form to create an account.</p>
   
    
 CompanyId:<input type="text" placeholder="Enter CompanyId" name="CompanyId" required style="margin-left:120px;"><br>
    
    
   CompanyName:<input type="text" placeholder="Enter Company Name" name="CompanyName" required style="margin-left:88px;"><br>
    
    
    
    
    Email:<input type="text" placeholder="Enter Email" name="Email" required style="margin-left:159px;"><br>
    
    
    

   
  Password:<input type="password" placeholder="Enter Password" name="Password" required style="margin-left:126px;"><br>

   
   Repeat Password:<input type="password" placeholder="Repeat Password" name="ConfirmPassword" required style="margin-left:66px;"><br>
   
   
  City:<input type="text" placeholder="Enter City" name="City" required style="margin-left:165px;"><br>
    
    
    
     
   MobileNumber:<input type="text" placeholder="Enter Mobile number" name="MobileNumber" required style="margin-left:87px;"><br>
   
 
   Address:<input type="text" placeholder="Enter Address" name="Address" required style="margin-left:131px;"><br>
   <input type="submit" value="submit">
    
 
    
   
   
  </div>
  
  
</form>
 <a href="CompanyLogin.jsp">Register</a>

</body>
</html>
