<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<jsp:include page="menu.jsp" />
<body>
	<h3 style="color: red;margin-left:450px;">Add New Employee</h3>

	<div id="addEmployee" style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;margin-left:450px;margin-right:450px;">
		<form action="/addNewEmployee" method="post"
			modelAttribute="emp">
			<p>
				<label><b>Employee Id:</b></label>
				<input type="text" name="empId" />
			</p>
			<p>
				<label><b>Employee Name:</b></label>
				<input type="text" name="empName" />
			</p>
			<p>
				<label><b>Employee Address:</b></label>
				<input type="text" name="address" />
			</p>
			<p>
				<label><b>Employee Salary:</b></label>
				<input type="text" name="salary" />
			</p>
			<input type="SUBMIT" value="Submit" style="padding: 5px; margin-bottom: 20px;margin-left:200px;margin-right:200px;"/>
		</form>
	</div>
</body>
</html>
