<%@ page import="com.calculatrice.servlets.Calculatrice"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Calculatrice</title>
</head>

<body>
	<div class="banner"
		style="background-image: linear-gradient(-225deg, rgba(0, 101, 168, 0.6) 0%, rgba(232, 237, 207, 0) 50%), url('http://getwallpapers.com/wallpaper/full/4/5/7/491328.jpg');">
		<div class="banner-content">
			<h1>Ma super calculatrice</h1>
			<div>
				<form method="post" action="calculette">
					<input type="number" name="firstNumber" id="firstNumber"> <select
						name="operator">
						<option value="+">+</option>
						<option value="-">-</option>
						<option value="*">x</option>
						<option value="/">/</option>
					</select> <input type="number" name="secondNumber" id="secondNumber">
					<input type="submit" value="resultat">
				</form>
			</div>
			<%--! Condition if jstl
		https://www.oracle.com/technetwork/java/index-137889.html
	https://stackoverflow.com/questions/5935892/if-else-within-jsp-or-jstl--%>
			<p>
				<c:choose>
					<c:when test="${operation.secondNumber == 0 && operation.operator =='/'}">Division par zéro !</c:when>
					<c:otherwise>Le résultat est: ${operation.getResult()}</c:otherwise>
				</c:choose>
			</p>
		</div>
	</div>
</body>
<style>
.banner {
	color: white;
	text-align: center;
	height: 100vh;
	/* if you have a 70px navbar => height: calc(100vh - 70px); */
	background-size: cover !important;
	display: flex;
	align-items: center;
	justify-content: center;
}

.banner h1 {
	font-size: 100px;
	font-weight: bold;
	text-shadow: 0px 1px rgba(0, 0, 0, 0.2);
}

.banner p {
	font-size: 50px;
	font-weight: lighter;
	color: rgb(255, 255, 255);
	opacity: 2;
	margin-bottom: 30px;
}
</style>
</html>


