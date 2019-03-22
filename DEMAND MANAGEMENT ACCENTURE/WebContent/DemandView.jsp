<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEMAND MANAGEMENT</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/DemandView.css" />
</head>
<body onload="checkUser()">

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>


<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a  href="#">Profile</a>
  <a class ="trigger" >Create Demand</a>
  <a class="triggerShow">View Demand</a>
  <a  href="ShowMyDemands.jsp">View My Demands</a>
  <a onclick= "deleteCookie()" >Logout</a>
  
</div>


<div class="modal">
    <div class="modal-content">
    	<div class="modal-header">
        <span class="close-button">&times;</span>
        <h2>Create Demand</h2>
        </div>
        <input type = "text" class = "modalTitle" placeholder="Enter Demand Title"></input>
        <textarea class = "modalDescription" placeholder="Enter Demand Description" id = "styleDesc"></textarea><br/>
        <input type="file" name="file" size="50" class ="fileHandle" /><br/><br/>
        <button type="submit" class="btn" onclick="storeDemand()">Submit Demand</button>
    </div>
</div>

<div class="modalShow">
    <div class="modalShow-content">
    	<div class="modalShow-header">
        <span class="closeShow-button">&times;</span>
        <h2>View Demand</h2>
        </div>
        <div class="search-container">
         <form action="ShowDemand.jsp" method ="post">
      <input type="text" placeholder="Search Demand ID .." name="searchID" class ="searchID"><br/>
      <label class="OR" >OR</label>
      <input type="text" placeholder="Search Demand Title .." name="searchTitle" class ="searchTitle">
      <button type="submit" class="view">SEARCH</button>
    	 </form>
        </div>
        
        
    </div>
</div>


<div class = "fade-in">
<center><% out.println("Welcome  Anuj " /*session.getAttribute("name")*/ );%></center>
</div>

<h2></h2>
<p></p>




<script>

document.cookie = "name="+"Anuj";

/* to prevent user from going to dashboard directly without loging in */
function checkUser()
{
	var name;
	var cookieval=document.cookie;
	 var cookies = cookieval.split(';');
	 for (var i=0;i<1;i++)
		 {
		 name = cookies[i].split('=')[1];
		 
		 }
		if (name == null)
			{
			alert("USER INVALID");
			window.location.replace("index.jsp")
			
			}
	}
/* to clear all cookies */
function deleteCookie () {
	alert("deleteCookie");
	var cookies = document.cookie.split("; ");
    for (var c = 0; c < cookies.length; c++) {
        var d = window.location.hostname.split(".");
        while (d.length > 0) {
            var cookieBase = encodeURIComponent(cookies[c].split(";")[0].split("=")[0]) + '=; expires=Thu, 01-Jan-1970 00:00:01 GMT; domain=' + d.join('.') + ' ;path=';
            var p = location.pathname.split('/');
            document.cookie = cookieBase + '/';
            while (p.length > 0) {
                document.cookie = cookieBase + p.join('/');
                p.pop();
            };
            d.shift();
        }
    }
    /* to clear browser history */
    var url = window.location.href;
    window.history.go(-window.history.length);
    window.location.href = url;
    window.location.replace("index.jsp");
}

function openNav() {
  document.getElementById("mySidenav").style.width = "350px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

var modal = document.querySelector(".modal");
var modalShow = document.querySelector(".modalShow");
var trigger = document.querySelector(".trigger");
var triggerShow = document.querySelector(".triggerShow");
var closeButton = document.querySelector(".close-button");
var closeShowButton = document.querySelector(".closeShow-button");



function toggleModal() {
    modal.classList.toggle("show-modal");
   //modal.style.display = "none";
   //var a = 1;
}

function toggleModalShow() {
    modalShow.classList.toggle("show-modalShow");
   //modal.style.display = "none";
   //var a = 1;
}


function windowOnClick(event) {
    if (event.target === modal) {
        toggleModal();
    }
    else if (event.target === modalShow)
    	{
    	toggleModalShow();
    	}
    
    
}



function storeDemand()
{
	toggleModal();
	 
	 // logic to store everything in DB
	 
	 // on success 
	 
	 window.alert("Demand Successfully created : ID : 1234");
		 
	}

trigger.addEventListener("click", toggleModal);
triggerShow.addEventListener("click", toggleModalShow);
closeButton.addEventListener("click", toggleModal);
closeShowButton.addEventListener("click", toggleModalShow);
window.addEventListener("click", windowOnClick);
</script>
   

</body>
</html>