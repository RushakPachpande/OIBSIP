<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cancellation</title>
    <script>
        function validateCancellation() {
            const pnrNumber = document.getElementById("pnrNumber").value.trim();
            if (pnrNumber === "") {
                alert("PNR Number is required!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h1>Cancellation Form</h1>
    <form action="cancel" method="post" onsubmit="return validateCancellation();">
        <label for="pnrNumber">PNR Number:</label>
        <input type="text" id="pnrNumber" name="pnrNumber" required>
        <button type="submit">Cancel</button>
    </form>
</body>
</html>