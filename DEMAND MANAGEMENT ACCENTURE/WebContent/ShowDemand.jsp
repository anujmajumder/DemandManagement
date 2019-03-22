<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demand Management</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/ShowDemand.css" />
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css"/>
		
</head>
<body>
<% 
String searchID = request.getParameter("searchID"); 

String searchTitle = request.getParameter("searchTitle"); 

// call  java function to search



%>

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
					<tbody>
					<%
// start try code
// java database query code 
// start of while loop

%>
    <tr><td><%//=rs.getInt("ID"); %></td><td><%//=rs.getString("NAME"); %></td><td><%//=rs.getString("SKILL"); %></td><td><%//=rs.getString("SKILL"); %></td><td><%//=rs.getString("SKILL"); %></td></tr>
    
    
    <tr><td>1<%//=rs.getInt("ID"); %></td><td>1<%//=rs.getString("NAME"); %></td><td>1<%//=rs.getString("SKILL"); %></td><td>1<%//=rs.getString("SKILL"); %></td><td>1<%//=rs.getString("SKILL"); %></td></tr>
    
        <%

// end of while loop and then catch etd
%>
					
					</tbody>
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
					
					
		
		<!-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script> -->
  <%-- <script type='text/javascript' src="${pageContext.request.contextPath}/datatable.js"></script> --%>
  
  <%-- <script type='text/javascript' src="${pageContext.request.contextPath}/bootstrap.js"></script>  --%>
  
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script> 
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
  
  
		<script type="text/javascript">
		
		$(document).ready(function() {
		    $('#table').DataTable( {
		        dom: 'Bfrtip',
		        buttons: [
		            'copy', 'csv', 'excel', 'pdf', 'print'
		        ]
		    } );
		} );
		</script> 
		<form action="DemandView.jsp" method ="post">
		<button>Back</button>
		</form>
		

</body>

</html>