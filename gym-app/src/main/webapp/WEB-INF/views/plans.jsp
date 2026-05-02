<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Workout Plans</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background: linear-gradient(to right, #3c786d, #c98423);">

<div class="container mt-5">
    <div class="card shadow p-4">
        <h2 class="text-center mb-4">Workout Plans</h2>

        <table class="table table-striped table-bordered text-center">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Exercise</th>
                    <th>Duration</th>
                    <th>Difficulty</th>
                    <th>Member</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="p" items="${plans}">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.exerciseName}</td>
                        <td>${p.duration}</td>
                        <td>${p.difficulty}</td>
                        <td>${p.member.name}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="/addPlan" class="btn btn-primary">Add Plan</a>
    </div>
</div>

</body>
</html>