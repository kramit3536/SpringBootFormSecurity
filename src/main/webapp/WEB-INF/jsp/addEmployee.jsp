<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
<style>
/* 
body {
  font-family: Arial, Helvetica, sans-serif;
}
*/
* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text]{
  width: 51%;
  padding: 15px;
  margin: 5px 0 10px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  padding: 10px 10px; line-height: 15px;
}

input[type=text]:focus {
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
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 62%;
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
</style>
</head>
<jsp:include page="menu.jsp" />
<body>
	<h3 style="color: red;margin-left:450px;">Add New Employee</h3>

	<div class="container" id="addEmployee">
		<form action="/addNewEmployee" method="post"
			modelAttribute="emp">
			<p>
				<label><b>Employee Id:</b></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text" name="empId" placeholder="Enter Employee Id"/>
			</p>
			<p>
				<label><b>Employee Name:</b></label> &nbsp;&nbsp;&nbsp;
				<input type="text" name="empName" placeholder="Enter Employee Name"/>
			</p>
			<p>
				<label><b>Employee Address:</b></label>
				<input type="text" name="address" placeholder="Enter Employee Address"/>
			</p>
			<p>
				<label><b>Employee Salary:</b></label> &nbsp;&nbsp;
				<input type="text" name="salary" placeholder="Enter Salary"/>
			</p>
			<input type="SUBMIT" class="registerbtn" value="Submit"/>
		</form>
	</div>
</body>
</html>
