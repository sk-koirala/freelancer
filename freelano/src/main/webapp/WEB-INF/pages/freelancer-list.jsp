<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function search() {
  const kw = document.getElementById('kw').value;
  fetch('${pageContext.request.contextPath}/admin/freelancer/search?kw='+encodeURIComponent(kw))
    .then(r=>r.json()).then(data=>{
      const tbody = document.getElementById('tbody');
      tbody.innerHTML = '';
      data.forEach(f=>{
        tbody.innerHTML += `<tr>
          <td>${f.id}</td><td>${f.name}</td><td>${f.email}</td>
          <td>${f.phone}</td><td>${f.portfolio}</td>
          <td>
            <a href="freelancer/form?id=${f.id}">Edit</a> |
            <a href="freelancer/delete?id=${f.id}"
               onclick="return confirm('Delete?')">Del</a>
          </td></tr>`;
      });
    });
}
</script>
</head>
<body>
  <h2>Freelancers</h2>
  <input id="kw" onkeyup="search()" placeholder="Search name…" />
  <a href="freelancer/form">New Freelancer</a>
  <table border="1">
    <thead><tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th>
      <th>Portfolio</th><th>Action</th></tr></thead>
    <tbody id="tbody">
      <c:forEach var="f" items="${freelancers}">
        <tr>
          <td>${f.id}</td><td>${f.name}</td><td>${f.email}</td>
          <td>${f.phone}</td><td>${f.portfolio}</td>
          <td>
            <a href="freelancer/form?id=${f.id}">Edit</a> |
            <a href="freelancer/delete?id=${f.id}" onclick="return confirm('Delete?')">
              Delete</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>