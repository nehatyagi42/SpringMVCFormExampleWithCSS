	
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="container">
<hr>
<footer>
<p>&copy; rtpl.com 2020</p>
</footer>

</div>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->

<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />


<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>

