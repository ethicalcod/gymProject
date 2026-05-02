<!DOCTYPE html>
<html>
<head>
    <title>Gym Dashboard</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #3c786d, #c98423);
        }

        .card {
            border-radius: 15px;
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        
        .custom-btn {
            background-color: rgba(201, 155, 81, 0.7);
            color: white;
            border: none;
        }

        .custom-btn:hover {
            background-color: rgba(201, 155, 81, 0.9);
            color: white;
        }

    </style>
</head>

<body>

<%@ include file="header.jsp" %>

<div class="container mt-5 text-center">

    <h1 class="mb-3 fw-bold">Gym Management System</h1>
    <p class="mb-5">Manage Members and Workout Plans efficiently</p>

    <div class="row justify-content-center">

        <!-- Members Card -->
        <div class="col-md-4 mb-4">
            <div class="card shadow p-4">
                <h4>Members</h4>
                <p>View and manage gym members</p>
                <a href="/members" class="btn custom-btn">View Members</a>
            </div>
        </div>

        <!-- Add Member -->
        <div class="col-md-4 mb-4">
            <div class="card shadow p-4">
                <h4>Add Member</h4>
                <p>Add new member to system</p>
                <a href="/addMember" class="btn custom-btn">Add Member</a>
            </div>
        </div>

        <!-- Plans -->
        <div class="col-md-4 mb-4">
            <div class="card shadow p-4">
                <h4>Workout Plans</h4>
                <p>View all workout plans</p>
                <a href="/plans" class="btn custom-btn">View Plans</a>
            </div>
        </div>

        <!-- Add Plan -->
        <div class="col-md-4 mb-4">
            <div class="card shadow p-4">
                <h4>Add Plan</h4>
                <p>Create workout plan</p>
                <a href="/addPlan" class="btn custom-btn">Add Plan</a>
            </div>
        </div>

    </div>

</div>

</body>
</html>