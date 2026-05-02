<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Members</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
</head>


<body style="background: linear-gradient(to right, #3c786d, #c98423);">
<%@ include file="header.jsp" %>
<div class="container mt-5">
    <div class="card shadow p-4">
        <h2 class="text-center mb-4">Members List</h2>

        <table class="table table-striped table-bordered text-center">
            <thead class="table-header-custom">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Membership</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="m" items="${members}">
                    <tr>
                        <td>${m.id}</td>
                        <td>${m.name}</td>
                        <td>${m.age}</td>
                        <td>${m.membershipType}</td>
                        <td>
                            <a href="/editMember/${m.id}" class="btn custom-btn btn-sm">Edit</a>
                            <a href="/deleteMember/${m.id}" class="btn delete-btn  "
                                onclick="return confirm('Are you sure you want to delete?');">
                                Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="/addMember" class="btn custom-btn">Add Member</a>
    </div>
</div>

</body>
</html>