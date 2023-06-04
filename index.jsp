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
        
        <label id="labelEmail" for="email">Email:</label>
        <input type="email" name="email" id="email"><br>

        <label id="labelMessage" for="message">Messrrrrrrage:</label>
        <textarea name="message" id="message" rows="4" cols="30"></textarea><br>

        <input type="checkbox" name="autoEnable" id="autoEnable"> Checkbox <br>

        <input type="submit" value="Submit">
    </form>
	<a id="spotifyLink" href="https://open.spotify.com/" target="_blank">Go to Spotify</a>
	<br/>
	<a id="whatsappLink" href="https://web.whatsapp.com/" target="_blank">Go to WhatsApp Web</a>
	<h3 id="webAppFooter">End of website</h3>
	
	<script>
		function toggleAutoEnable() {
			var autoEnableCheckbox = document.getElementById("autoEnable");
			autoEnableCheckbox.checked = true;
		}
		
		window.addEventListener("load", toggleAutoEnable);
	</script>
</body>
</html>

