<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Clients</title>

  <script>
    function doSearch() {
      const kw = document.getElementById('kw').value;
      fetch('${pageContext.request.contextPath}/admin/client/search?kw=' 
            + encodeURIComponent(kw))
        .then(r => r.json())
        .then(data => {
          const tbody = document.getElementById('tbody');
          tbody.innerHTML = '';
          data.forEach(c => {
            tbody.innerHTML += `
              <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.email}</td>
                <td>${c.phone}</td>
                <td>${c.address}</td>
                <td>
                  <a href="client/form?id=${c.id}">Edit</a> |
                  <a href="client/delete?id=${c.id}"
                     onclick="return confirm('Delete?')">Del</a>
                </td>
              </tr>`;
          });
        });
    }
  </script>
</head>
<body>
<h2>Clients</h2>
  <input id="kw" placeholder="Search by name" onkeyup="doSearch()" />
  <a href="client/form">+ New Client</a>
  <table border="1">
    <thead>
      <tr><th>ID</th><th>Name</th><th>Email</th>
          <th>Phone</th><th>Address</th><th>Action</th></tr>
    </thead>
    <tbody id="tbody">
      <c:forEach var="c" items="${clients}">
        <tr>
          <td>${c.id}</td>
          <td>${c.name}</td>
          <td>${c.email}</td>
          <td>${c.phone}</td>
          <td>${c.address}</td>
          <td>
            <a href="client/form?id=${c.id}">Edit</a> |
            <a href="client/delete?id=${c.id}"
               onclick="return confirm('Delete?')">Delete</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

</body>
</html>