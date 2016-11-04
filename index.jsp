<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Trabajando con JSP Standard Tag Library (JSTL)</h1>
        <p> <c:out value="Mi muñeca me habló" /> </p>
        <p> <%=request.getAttribute("mensaje")%> </p>
        <p> <c:out value="${mensaje}" />  </p>
        <hr />
        <c:set var="texto" value="ñandú lalá" />
        <p> <c:out value="${texto}" /> </p>
        
        <hr />
        <c:if test="${texto=='ñandú lalá'}">
            <p> la condición se cumple</p>
        </c:if>
            <hr />
            <p> <img src="<c:url value="public/images/foto.jpg" />" /> </p>
        <hr />
        <ul>
            <c:forEach items="${lista}" var="l">
                <li> <c:out value="${l}" /> </li>
            </c:forEach>
        </ul>
    </body>
</html>
