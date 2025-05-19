<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projects</title>
<script>
function doSearch() {
  const kw = document.getElementById('kw').value;
  fetch('${pageContext.request.contextPath}/admin/project/search?kw=' 
        + encodeURIComponent(kw))
    .then(r=>r.json()).then(data=>{
      const t = document.getElementById('tbody');
      t.innerHTML = '';
      data.forEach(p=>{
        t.innerHTML += `<tr>
          <td>${p.id}</td>
          <td>${p.title}</td>
          <td>${p.description}</td>
          <td>${p.budget}</td>
          <td>${p.deadline}</td>
          <td>${p.status}</td>
          <td>
            <a href="project/form?id=${p.id}">Edit</a> |
            <a href="project/delete?id=${p.id}" onclick="return confirm('Delete?')">
              Del</a>
          </td>
        </tr>`;
      });
    });
}
</script>
</head>
<body>
  <h2>Projects</h2>
  <input id="kw" onkeyup="doSearch()" placeholder="Search title/status…" />
  <a href="project/form">+ New Project</a>
  <table border="1">
    <thead>
      <tr><th>ID</th><th>Title</th><th>Description</th>
          <th>Budget</th><th>Deadline</th><th>Status</th><th>Actions</th></tr>
    </thead>
    <tbody id="tbody">
      <c:forEach var="p" items="${projects}">
        <tr>
          <td>${p.id}</td>
          <td>${p.title}</td>
          <td>${p.description}</td>
          <td>${p.budget}</td>
          <td>${p.deadline}</td>
          <td>${p.status}</td>
          <td>
            <a href="project/form?id=${p.id}">Edit</a> |
            <a href="project/delete?id=${p.id}" onclick="return confirm('Delete?')">Delete</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>