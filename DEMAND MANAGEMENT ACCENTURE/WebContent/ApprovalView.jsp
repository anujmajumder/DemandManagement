<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"  %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/ApprovalView.css" />
<meta charset="ISO-8859-1">
<title>Demand Management</title>
</head>
<body>

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>


<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a  href="#">Profile</a>
  <a class ="view">View Approved Demands</a>
  
  
</div>

<table border="1">
<thead><tr><th></th><th>NUMBER</th></tr></thead>
<tbody>
<%

   
        /* while (rs.next())
        {  */
          // String taskId = rs.getString("TASKID");
        String taskId ="1";
        %>
        
          <tr>
          <td><%=taskId%></td><td><%= taskId %></td><td><%=taskId%></td>
              <td><input class ="trigger" type="button" id="btnApprove" onclick="getTaskId(<%=taskId%>);" value="Approve" />
              
    
    </td>
    
          </tr>
          <tr>
          <td><%=2%></td><td><%=2%></td><td><%=2%></td>
              <td><input class ="trigger" type="button" id="btnApprove" onclick="getTaskId(<%=2%>);" value="Approve" />
              
   
   
    </td>
    
          </tr>
          

</tbody>
</table>
<div class="modal">
    <div class="modal-content">
    	<div class="modal-header">
        <span class="close-button">&times;</span>
        <h2>Approve Demand</h2>
        </div>
        Demand ID : <label id = "id"></label>
        <input type = "text" class = "modalTitle" placeholder="Enter Demand Title" id = "title1"></input>
        <textarea class = "modalDescription" placeholder="Enter Demand Description" id = "styleDesc"></textarea><br/>
        
        <button type="submit" class="btn" onclick="approveDemand()">Approve</button>
        <br/><br/>
        <button type="submit" class="btn" onclick="rejectDemand()">Reject</button>
    </div>
</div>


    <script type="text/javascript">
    
    var modal = document.querySelector(".modal");
    var closeButton = document.querySelector(".close-button");
    
   // var trigger = document.querySelector(".trigger");
   
   
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
        //trigger.addEventListener("click", toggleModal);
    </script>
</body>
</html>