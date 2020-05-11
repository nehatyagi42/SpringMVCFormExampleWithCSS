<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
 <jsp:include page="header.jsp"/>
 
  <h1>Employee List</h1>
  <table border="2" width="70%" cellpadding="2">
  <tr><th>Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>
  
  <c:forEach var="emp" items="${list}" varStatus="loop">
	
   <tr>
  <td id="id-${loop.index}">${emp.id}</td>
  <td id="name-${loop.index}">${emp.name}</td>
  <td id="salary-${loop.index}">${emp.salary}</td>
  <td id="designation-${loop.index}">${emp.designation}</td>
    
  <%--  <td>${emp.id}</td>
   <td>${emp.name}</td>  
   <td>${emp.salary}</td>  
   <td>${emp.designation}</td>   --%>
   
   
  <%--   <td><a href="<c:url value='editemp/${emp.id}' />">Edit</a></td>
	<td><a href="<c:url value='deleteemp/${emp.id}' />">Delete</a></td> --%>
   
  <%--  <td><a href="javascript: editemp(${emp.id},${loop.index})">Edit</a></td>
	<td><a href="<c:url value='deleteemp/${emp.id}' />">Delete</a></td>  --%>
 <td>  <a href="javascript: editemp(${emp.id},${loop.index})" button class="btn btn-primary btn-sm" data-target="#editModal">Edit</a>
     </td>

   </tr> 

   </c:forEach>  
   </table>  
   <br/> 
   <!--EmployeeForm Code  -->
   
   <div class="text-left">
    <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#viewModal" >Add New </button>
</div>
<div class="modal fade" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="Add New Employee" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Add New</h5>
            </div>

            <div class="modal-body">
                <!-- The form is placed inside the body of modal -->
                <form:form id="viewemp"  class="form-horizontal" action="save" modelAttribute="user">
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Name: </label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3 control-label">Salary</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="salary" />
                        </div>
                    </div>

                     <div class="form-group">
                        <label class="col-xs-3 control-label">Designation</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="designation" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-5 col-xs-offset-3">
                            <button type="submit" class="btn btn-primary" >save</button>
                           
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<!--End EmployeeForm Code  -->

<!-- ****************************************************************************************************************************** -->

<!-- EditEmployee Form -->
  
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="Edit Employee" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Edit Employee</h5>
            </div>

            <div class="modal-body">
                <!-- The form is placed inside the body of modal -->
                <form:form id="editemployee" class="form-horizontal" action="editsave" modelAttribute="user">
                
                
                
                    <div class="form-group">
                        <label class="col-xs-3 control-label">id</label>
                        <div class="col-xs-5">
                            <input type="hidden" class="form-control" name="id" />
                        </div>
                    </div>
                
                
                
                
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Name: </label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3 control-label">Salary</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="salary" />
                        </div>
                    </div>

                     <div class="form-group">
                        <label class="col-xs-3 control-label">Designation</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="designation" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-5 col-xs-offset-3">
                            <button type="submit" class="btn btn-primary">Edit Save	</button>
                           
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

   function editemp(id, index) {

			// 			alert("helo " +index +" id is "+"name-"+index);
			var name = document.getElementById('name-' + index).innerHTML;
			var salary = document.getElementById('salary-' + index).innerHTML;
			var designation = document.getElementById('designation-' + index).innerHTML;
			
			var employee = {
				"id" : id,
				"name" : name,
				"salary" : salary,
				"designation" : designation,
			};
			
			}
   </script>