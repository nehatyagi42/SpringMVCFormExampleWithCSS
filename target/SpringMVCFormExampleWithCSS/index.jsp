<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
		<link href="${bootstrapCss}" rel="stylesheet" />
		
	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<!-- 	<script src="//cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.min.js"/> -->
<!-- 	<script src="//cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.js"/> -->
	<script src="${bootstrapJs}"></script>
</head>
 <body>
 

<div class="text-center">
    <button class="btn btn-default" data-toggle="modal" data-target="#loginModal" >Login</button>

</div>
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Login</h5>
            </div>

            <div class="modal-body">
                <!-- The form is placed inside the body of modal -->
                <form:form id="loginForm"  class="form-horizontal" action="viewemp" modelAttribute="user">
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Username</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="userName" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3 control-label">Password</label>
                        <div class="col-xs-5">
                            <input type="password" class="form-control" name="password" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-5 col-xs-offset-3">
                            <button type="submit" class="btn btn-primary">Login</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<div>
<p>${msg}</p>
</div>

<script>
$(document).ready(function() {
// 	alert("hi" );
    $('#loginForm').validate({
        framework: 'bootstrap',
        excluded: ':disabled',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                validators: {
                    notEmpty: {
                        message: 'The username is required'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required'
                    }
                }
            }
        }
    });
});


// function myfunction(){
	
// 	 $('#loginForm').formValidation({
// 	        framework: 'bootstrap',
// 	        excluded: ':disabled',
// 	        icon: {
// 	            valid: 'glyphicon glyphicon-ok',
// 	            invalid: 'glyphicon glyphicon-remove',
// 	            validating: 'glyphicon glyphicon-refresh'
// 	        },
// 	        fields: {
// 	            username: {
// 	                validators: {
// 	                    notEmpty: {
// 	                        message: 'The username is required'
// 	                    }
// 	                }
// 	            },
// 	            password: {
// 	                validators: {
// 	                    notEmpty: {
// 	                        message: 'The password is required'
// 	                    }
// 	                }
// 	            }
// 	        }
// 	    });
	
// 	alert("hi" );
// }
</script>


</body>
 


