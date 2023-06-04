<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Our Website</title>
</head>
<body>
	<h1 id="webAppTitle">The best web application ever!</h1>
    <form method="post" action="process.jsp">
        <label id="labelName" for="name">Name:</label>
        <input type="text" name="name" id="name"><br>
		
		<label id="labelAge" for="age">Age:</label>
        <input type="number" min="1" max="150" name="age" id="age" onblur="toggleLabel()"><br>
		<label id="labelAgeMessage" style="display: none;">You are below 25 years old.</label>

		<script>
            function toggleLabel() {
                var ageInput = document.getElementById("age");
                var ageLabel = document.getElementById("labelAgeMessage");
                
                if (ageInput.value < 25) {
                    ageLabel.style.display = "block";
                } else {
                    ageLabel.style.display = "none";
                }
            }
        </script>

