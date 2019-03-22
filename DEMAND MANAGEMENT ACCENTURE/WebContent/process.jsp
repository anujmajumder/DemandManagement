<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bean.LoginDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEMAND MANAGEMENT</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Design1.css" />
</head>
<body>

<jsp:useBean id="obj" class="bean.LoginBean" scope ="session"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>


<% 
System.out.println("PASSWORD"+obj.getEmail());
System.out.println("PASSWORD"+obj.getPassword());
System.out.println("IN PROCESS");
boolean  status = LoginDAO.validate(obj);

if (status)
{
	System.out.println("You are successfully logged in");  
	session.setAttribute("session","TRUE"); 
	if(LoginDAO.name!=null)
	{
	session.setAttribute("name", LoginDAO.name);
	session.setAttribute("email", obj.getEmail());
	
	}
}
else
{
	out.print("Sorry, email or password error");  
	%>
 <jsp:include page="index.jsp"></jsp:include>  
	<% 
}

%>
<div id="header">
        <div class="logo">
            <a href="../process.jsp"><% out.println("Welcome  " + session.getAttribute("name"));%></a>
        </div>

    </div>


    <a class="mobile">MENU</a>


    <div id="container">

        <div class="sidebar">
            <ul id="nav">
                <li>
                    
                    <a href="#" class="selected" onclick="openForm()">Create Users</a>
                </li>
                <li>
                    <a href="#">Show Users</a>
                </li>
                <li>
                    <a href="#">User Role Mapping</a>
                </li>
            </ul>
            
>

        </div>
        </div>
        <div class="form-popup" id="myForm">
  <form action="" class="form-container">
    <h1>CREATE USER</h1>

    <label for="email"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="email" required>

    <label for="psw"><b>USERID</b></label>
    <input type="password" placeholder="Enter userID" name="psw" required>

    <button type="submit" class="btn">CREATE</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>
        <script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
 
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>

</body>
</html>