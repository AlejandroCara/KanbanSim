<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"></jsp:include>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.contenedor {
	display: flex;
	flex-direction: row;
	margin-top: 5%;
	margin-left: 10%;
}
.fase{
display: flex;
	flex-direction: row;
}
.faseName{
padding: 10px;
}

</style>
</head>
<body>
	<div class="btn-group">

		<a class="btn btn-outline-primary" href="/addTask">Nueva Tarea</a>
		<a class="btn btn-outline-primary" href="/addFase" >Nueva	Fase</a>
		<a class="btn btn-outline-primary" href="/addUser">Nuevo	Usuario</a>
	</div>
	
	<div class="contenedor">
	
		<div class="principio"><h3>Etapa de inicio</h3></div>
		<div class="fase"><c:forEach items="${phases}" var="fase">
           
              <div class="faseName">
             <p><strong><c:out value="${fase.name}"></c:out></strong></p>
               </div>

            
        </c:forEach></div>
		<div class="fin"><h3>Etapa final</h3></div>
	</div>
	
			
	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>