<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Client Form</title>
</head>
<body>
  <h2><c:choose>
    <c:when test="${not empty client.id}">Edit Client</c:when>
    <c:otherwise>New Client</c:otherwise>
  </c:choose></h2>

  <c:if test="${not empty error}">
    <div style="color:red">${error}</div>
  </c:if>

  <form action="${pageContext.request.contextPath}/admin/client/save" method="post">
    <input type="hidden" name="id" value="${client.id}" />
    <label>Name: 
      <input name="name" value="${client.name}" required />
    </label><br/>
    <label>Email: 
      <input name="email" type="email" 
             value="${client.email}" required />
    </label><br/>
    <label>Phone: 
      <input name="phone" value="${client.phone}" />
    </label><br/>
    <label>Address:
      <input name="address" value="${client.address}" />
    </label><br/>
    <button type="submit">Save</button>
  </form>

  <p><a href="${pageContext.request.contextPath}/admin/clients">
      ← Back to list</a>
  </p>
</body>
</html>