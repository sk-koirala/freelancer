<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freelancer Form</title>
</head>
<body>
  <h2><c:choose>
    <c:when test="${not empty freelancer.id}">Edit Freelancer</c:when>
    <c:otherwise>New Freelancer</c:otherwise>
  </c:choose></h2>
  <c:if test="${not empty error}">
    <div style="color:red">${error}</div>
  </c:if>
  <form action="${pageContext.request.contextPath}/freelancer" method="post">
    <input type="hidden" name="id" value="${freelancer.id}" />
    <label>Name:<input name="name" value="${freelancer.name}" required/></label><br/>
    <label>Email:<input name="email" type="email" value="${freelancer.email}" required/></label><br/>
    <label>Phone:<input name="phone" value="${freelancer.phone}"/></label><br/>
    <label>Portfolio:<input name="portfolio" value="${freelancer.portfolio}"/></label><br/>
    <button type="submit">Save</button>
  </form>
  <p><a href="${pageContext.request.contextPath}/freelancers">← Back</a></p>
</body>
</html>