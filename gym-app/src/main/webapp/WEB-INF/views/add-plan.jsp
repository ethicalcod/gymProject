<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Workout Plan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background: linear-gradient(to right, #3c786d, #c98423);">

<div class="container mt-5">
    <div class="card shadow p-4">
        <h2 class="text-center mb-4">Add Workout Plan</h2>

        <form action="savePlan" method="post">

            <div class="mb-3">
                <label>Exercise</label>
                <input type="text" name="exerciseName" class="form-control"/>
            </div>

            <div class="mb-3">
                <label>Duration</label>
                <input type="number" name="duration" class="form-control"/>
            </div>

            <div class="mb-3">
                <label>Difficulty</label>
                <select name="difficulty" class="form-control">
                    <option>Easy</option>
                    <option>Medium</option>
                    <option>Hard</option>
                </select>
            </div>

            <div class="mb-3">
                <label>Member</label>
                <select name="memberId" class="form-control">
                    <c:forEach var="m" items="${members}">
                        <option value="${m.id}">${m.name}</option>
                    </c:forEach>
                </select>
            </div>

            <button class="btn btn-success w-100">Save Plan</button>
        </form>
    </div>
</div>

</body>
</html>