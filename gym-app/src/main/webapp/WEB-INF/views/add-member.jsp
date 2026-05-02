<!DOCTYPE html>
<html>
<head>
    <title>Add Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
</head>

<body style="background: linear-gradient(to right, #3c786d, #c98423);">
<%@ include file="header.jsp" %>

<div class="container mt-5">
    <div class="card shadow p-4">
        <h2 class="text-center mb-4">Add/Edit Member</h2>

        <c:if test="${not empty error}">
            <div class="alert alert-danger text-center">
                 ${error}
            </div>
        </c:if>

        <form action="/saveMember" method="post">
            <input type="hidden" name="id" value="${member.id}" />

            <div class="mb-3">
                <label>Name</label>
                <input type="text" name="name" class="form-control" value="${member.name}" required/>
            </div>

            <div class="mb-3">
                <label>Age</label>
                <input type="number" name="age" class="form-control" value="${member.age}" required/>
            </div>

            <div class="mb-3">
                <label>Membership Type</label>
                <select name="membershipType" class="form-control">
                    <option>Basic</option>
                    <option>Premium</option>
                </select>
            </div>

            <button class="btn custom-btn w-100">Save Member</button>
        </form>
    </div>
</div>

</body>
</html>