<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEMAND MANAGEMENT</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Design.css" />
</head>
<body onload="checkUser()">
<div class ="form">
<form action="DemandView.jsp" method ="post">
<input type ="email" name = "email" placeholder="Username"/><br/><br/>
<input type ="password" name = "password" placeholder="Password"/><br/><br/>
<button>LOGIN</button>

</form>
</div>

<script type="text/javascript">

function checkUser()
{
	var name;
	var cookieval=document.cookie;
	 var cookies = cookieval.split(';');
	 for (var i=0;i<1;i++)
		 {
		 name = cookies[i].split('=')[1];
		 
		 }
		if (name != null)
			{
			alert("USER ALREADY LOGGED IN ");
			window.location.replace("DemandView.jsp");
			
			}
	}

</script>
</body>
</html>