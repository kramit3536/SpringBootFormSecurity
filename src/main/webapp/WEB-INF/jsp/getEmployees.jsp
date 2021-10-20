<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show Employees</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	      
	<h3 style="color: red;margin-left:450px;;margin-right:450px;">Show All Employees</h3>
	<h3 style="color: blue;margin-left:250px;;margin-right:250px;">
		<c:forEach var="listValue" items="${employees}">
			<li>${listValue}</li>
		</c:forEach>
		
	</h3>
</body>
</html>