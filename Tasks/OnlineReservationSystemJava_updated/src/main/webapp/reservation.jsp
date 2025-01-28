<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reservation</title>
    <script>
        function validateReservation() {
            const name = document.getElementById("name").value.trim();
            const trainNumber = document.getElementById("trainNumber").value.trim();
            const from = document.getElementById("from").value.trim();
            const to = document.getElementById("to").value.trim();
            if (!name || !trainNumber || !from || !to) {
                alert("All fields are required!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h1>Reservation Form</h1>
    <form action="reserve" method="post" onsubmit="return validateReservation();">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="trainNumber">Train Number:</label>
        <input type="text" id="trainNumber" name="trainNumber" required>
        <label for="classType">Class Type:</label>
        <select id="classType" name="classType" required>
            <option value="Sleeper">Sleeper</option>
            <option value="AC">AC</option>
        </select>
        <label for="dateOfJourney">Date of Journey:</label>
        <input type="date" id="dateOfJourney" name="dateOfJourney" required>
        <label for="from">From:</label>
        <input type="text" id="from" name="from" required>
        <label for="to">To:</label>
        <input type="text" id="to" name="to" required>
        <button type="submit">Reserve</button>
    </form>
</body>
</html>