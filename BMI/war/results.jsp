<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>

<html>
<link type="text/css" rel="stylesheet" href="stylesheet.css"/>
<form style="text-align:center" name="Results" action="data.jsp" method="get">
<p></p>
<h1 style="color:Green">
BMI Results
</h1>
<p></p>
<hr>

<h3>Thanks 
<em><%=request.getParameter("name")%></em>,
</h3>
<br>
<h3>you are a 
<%=request.getParameter("gender")%>,
</h3>
<br>
<h3>in the 
<%=request.getParameter("agerange")%> age range.
</h3>
<br>
<hr>

<%
double h = Double.parseDouble(request.getParameter("height"));
double w = Double.parseDouble(request.getParameter("weight"));
double bmiNumerator = w;
double bmiPartDenominator = h/100;
double bmiDenominator = (Math.pow( bmiPartDenominator, 2));
double bmi = bmiNumerator / bmiDenominator;
DecimalFormat bmi2d = new DecimalFormat(" ##.## ");
double result = Double.valueOf(bmi2d.format(bmi));
%>

<h2 style="color:Green">
Your Body Mass Index (BMI) is: <span style="color:red"><%=result%></span>
</h2>
<br>
<hr>

<%if ( result < 15.0 )
{%>
<h3>Your result is less than 15.</h3>
<%}%>
<%if ( ( 15.0 <= result) && (result < 18.5) )
{%>
<h3>Your result is less than 18.5</h3>
<%}%>
<%if (( 18.5 <= result) && (result < 25.0) )
{%>
<h3>Your result is normal.</h3>
<%}%>
<%if ( ( 25.0 <= result) && (result < 30.0) )
{%>
<h3>Your result is greater than 25.</h3>
<%}%>
<%if ( 30.0 <= result )
{%>
<h3>Your result is greater than 30.</h3>
<%}%>
<br>
<%if ( ( result < 15.0 ) || ( 30.0 <= result ) )
{%>
<h3>Please consult your GP for advice.</h3>
<br>
<img src="doctor.jpg" width="149" height="250" align="middle">
<%}%>
<%if ( ( ( 15.0 <= result) && (result < 18.5) ) || ( ( 25.0 <= result) && (result < 30.0) ) )
{%>
<h3>We recommend a healthy diet
<img src="diet.jpg" width="200" height="176" align="middle">
combined with regular exercise.
<img src="exercise.jpg" width="166" height="240" align="middle">
</h3>
<%}%>
<%if (( 18.5 <= result) && (result < 25.0) )
{%>
<h3>Congratulations - keep up the good work.</h3>
<br>
<img src="trophy.jpg" width="118" height="165" align="middle">
<%}%>        

</form>

</html>
<!-- end of form -->