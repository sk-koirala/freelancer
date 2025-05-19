<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Form</title>
</head>
<body>
  <h2><c:choose>
    <c:when test="${not empty payment.id}">Edit Payment</c:when>
    <c:otherwise>New Payment</c:otherwise>
  </c:choose></h2>

  <c:if test="${not empty error}">
    <div style="color:red">${error}</div>
  </c:if>

  <form action="${pageContext.request.contextPath}payment" method="post">
    <input type="hidden" name="id" value="${payment.id}" />
    <label>Amount:
      <input name="amount" type="number" step="0.01"
             value="${payment.amount}" required/>
    </label><br/>
    <label>Date:
      <input name="date" type="date" value="${payment.date}" required/>
    </label><br/>
    <label>Status:
      <input name="status" value="${payment.status}" required/>
    </label><br/>
    <button type="submit">Save</button>
  </form>

  <p><a href="${pageContext.request.contextPath}/payments">← Back</a></p>
</body>
</html>