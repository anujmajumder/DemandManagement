<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demand Management</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/ApprovedView.css" />
</head>
<body>

<form align="center" action="ApprovalView1.jsp" method ="post">
		<button>Back</button>
		</form><br/>
<div style="overflow-x:auto;">

<table id ="box" class ="box" align = "center">
<thead><tr><th>Demand ID</th><th>Demand Title</th><th>Demand Description</th><th>Action</th></tr></thead>
<tbody>
<%

   
        /* while (rs.next())
        {  */
          // String taskId = rs.getString("TASKID");
        String taskId ="1";
        %>
        
          <tr onclick="getTaskId(<%=taskId%>);">
          <td ><%=taskId%></td><td><%= taskId %></td><td><%=taskId%></td>
              <td><input class ="trigger" type="button" id="btnApprove" />
              
    
    </td>
    
          </tr>
          <tr>
          <td><%=2%></td><td><%=2%></td><td><%=2%></td>
              <td><input class ="trigger" type="button" id="btnApprove" onclick="getTaskId(<%=2%>);"  />
              
   
   
    </td>
    
          </tr>
          
          
          

</tbody>
</table>
</div>
<div class="modal">
    <div class="modal-content">
    	<div class="modal-header">
        <span class="close-button">&times;</span>
        <h2>View Approved Demand</h2>
        </div>
        Demand ID : <br/><label id = "id"></label><br/>
        Demand Title : <br/><input type = "text" class = "modalTitle" placeholder="Enter Demand Title" id = "title1"></input>
        Demand Description : <br/><textarea class = "modalDescription" placeholder="Enter Demand Description" id = "styleDesc"></textarea><br/>
        
        <button type="submit" class="btn" onclick="toggleModal()">Close</button>
        
        
    </div>
</div>

<script>



var modal = document.querySelector(".modal");
var closeButton = document.querySelector(".close-button");

function toggleModal() {
    modal.classList.toggle("show-modal");
}
function windowOnClick(event) {
    if (event.target === modal) {
        toggleModal();
    }
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