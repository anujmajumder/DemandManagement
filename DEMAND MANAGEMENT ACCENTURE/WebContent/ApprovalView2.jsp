<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEMAND MANAGEMENT</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/ShowDemand.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css"/>
</head>
<body>






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






	
	$(document).ready(function() {
	    var table = $('#table').DataTable( {
	        dom: 'Bfrtip',
	        ajax: {
	            "type"   : "POST",
	            "url"    : '/path/to/your/URL',
	            "data"   : {
	                "user_id": id
	            }
	            
	          },
	        
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ],
	        
	        columnDefs : [ {
	            "targets": -1,
	            "data": null,
	            "defaultContent": "<button class='btn-approve' >Approve</button><button class='btn-reject'>Reject</button>"
	        } ]
	        
	          
	          
	    } );
	     /*  $( document ).on("click", "tr[role='row']", function(){
		alert("clicked");
	    alert($(this).children('td:first-child').text()) 
	}); 
	     */
	     
	    /* var table = $('#table').DataTable({
            select: true,
            responsive: {
                details: {
                    type: 'column',
                    target: 'tr', //THIS WORKS GREAT IN RESPONSIVE VIEW
                    display: $.fn.dataTable.Responsive.display.modal( {
                        header: function ( row ) {
                            var data = row.data();
                            return 'Details for '+data[0]+' '+data[1];
                        }
                    }),
                    renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
                        tableClass: 'table'
                    })
                }
            }
        }).on( 'select', function ( e, dt, type, indexes ) {
            //if not responsive view launch responsive modal
        }); */
	    /* $('#table tbody').on('click', 'tr', function () {
	        var data = table.row( this ).data();
	        alert( 'You clicked on '+data[0]+'\'s row' );
	       
	    } ); */
	    
	    $('#table tbody').on('click','.btn-approve',function (){
	    	var data = table.row( $(this).parents('tr')).data();
	    	var id = data[0];
	    	//alert(data[0]+ " in approve");
	    	$.ajax({
		        async: "true",
		        type: "POST",
		        url: "http://localhost:8087/ApproveDemands",
		        data: {
		        	"demand_id":id
		        },
		        headers: {
		            "Content-Type": "application/json"
		        }, 
		        success: function (data) {
		        	window.location.replace("/ApprovalView");
		        },
		        error: function (data) {
		            
		                $("#serverContent").html(data["responseJSON"]["message"]);
		            
		        }});
	   
	    
	    $('#table tbody').on('click','.btn-reject',function (){
	    	var data = table.row( $(this).parents('tr')).data();
	    	var id = data[0];
	    	//alert(data[0]+ " in reject");
	    	$.ajax({
		        async: "true",
		        type: "POST",
		        url: "http://localhost:8087/RejectDemands",
		        data: {
		        	"demand_id":id
		        },
		        headers: {
		            "Content-Type": "application/json"
		        }, 
		        success: function (data) {
		        	window.location.replace("/ApprovalView");
		        },
		        error: function (data) {
		            
		                $("#serverContent").html(data["responseJSON"]["message"]);
		            
		        }});
    
	    
	    
	} 
	
	
	);
	
	
	
	</script> 
	
	<form action="DemandView.jsp" method ="post">
	<button>Back</button>
	</form>
	





</body>
</html>