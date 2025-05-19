<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payments</title>
<script>
function doSearch() {
  const kw = document.getElementById('kw').value;
  fetch('${pageContext.request.contextPath}/admin/payment/search?kw='
        + encodeURIComponent(kw))
    .then(r=>r.json()).then(data=>{
      const tb = document.getElementById('tbody');
      tb.innerHTML = '';
      data.forEach(p=>{
        tb.innerHTML += `<tr>
          <td>${p.id}</td><td>${p.amount}</td><td>${p.date}</td>
          <td>${p.status}</td>
          <td>
            <a href="payment/form?id=${p.id}">Edit</a> |
            <a href="payment/delete?id=${p.id}" onclick="return confirm('Delete?')">
              Del</a>
          </td></tr>`;
      });
    });
}
</script>
</head>
<body>
  <h2>Payments</h2>
  <input id="kw" onkeyup="doSearch()" placeholder="Search status…" />
  <a href="payment/form">New Payment</a>
  <table border="1">
    <thead><tr><th>ID</th><th>Amount</th><th>Date</th>
      <th>Status</th><th>Action</th></tr></thead>
    <tbody id="tbody">
      <c:forEach var="p" items="${payments}">
        <tr>
          <td>${p.id}</td><td>${p.amount}</td><td>${p.date}</td>
          <td>${p.status}</td>
          <td>
            <a href="payment/form?id=${p.id}">Edit</a> |
            <a href="payment/delete?id=${p.id}" onclick="return confirm('Delete?')">
              Delete</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>