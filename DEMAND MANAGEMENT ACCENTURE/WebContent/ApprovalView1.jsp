<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEMAND MANAGEMENT</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/ApprovalView1.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css"/>
</head>
<body onload="closeNav()">

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>


<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a  href="#">Profile</a>
  <a href="ApprovedView.jsp">View Approved Demands</a>
 
  
</div>

<h3>DEMAND LIST</h3>
				<table class="display nowrap" id="table"   style="width:100%">
					<thead class ="table-dark">
					
						<tr>
							<th>DEMAND ID</th>
							<th>TITLE</th>
							<th>DESCRIPTION</th>
							<th>ETC</th>
							<th>ETC</th>
						</tr>
					</thead>

					<tfoot >
						<tr>
							<th>DEMAND ID</th>
							<th>TITLE</th>
							<th>DESCRIPTION</th>
							<th>ETC</th>
							<th>ETC</th>
						</tr>
					</tfoot>
					</table>
					
			

<div class="modal">
    <div class="modal-content">
    	<div class="modal-header">
        <span class="close-button">&times;</span>
        <h2>Approve Demand</h2>
        </div>
        Demand ID : <br/><label id = "id"></label><br/>
        Demand Title : <br/><input type = "text" class = "modalTitle" placeholder="Enter Demand Title" id = "title1"></input>
        Demand Description : <br/><textarea class = "modalDescription" placeholder="Enter Demand Description" id = "styleDesc"></textarea><br/>
        
        <button type="submit" class="btnApp" onclick="">Approve</button>
        <br/><br/>
        <button type="submit" class="btnRej" onclick="">Reject</button>
    </div>
</div>
 <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script> 
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>

<script>



var modal = document.querySelector(".modal");
var closeButton = document.querySelector(".close-button");

function openNav() {
  document.getElementById("mySidenav").style.width = "350px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

function toggleModal() {
    modal.classList.toggle("show-modal");
}
function windowOnClick(event) {
    if (event.target === modal) {
        toggleModal();
    }
}

function approveDemand(Id)
{
	window.alert(Id);
	toggleModal();
	
}

function rejectDemand(Id)
{
	window.alert(Id);
	toggleModal();
	
}
	


    function getTaskId(i){
       // var id = document.getElementById('getTaskId').value;
        //window.alert(i);
        // query with task ID
        // get resultset
        toggleModal();
        document.getElementById("id").innerHTML = i;
        document.getElementById("title1").value = i;
        document.getElementById("styleDesc").innerHTML = i;
       // window.location = "DemandView.jsp";
       
    }
    
    closeButton.addEventListener("click", toggleModal);
    window.addEventListener("click", windowOnClick);
</script>




</body>
</html>