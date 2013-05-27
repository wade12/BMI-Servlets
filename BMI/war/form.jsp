<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>

<html>

<form name="BMI Form" action="results.jsp" method="post">

<p></p>
<h1 style="color:Green">
Your BMI Data Form
</h1>
<hr>

<label>
Please enter your first name:
<input type="text" name="name">
</label>
<hr>

<label>
Please enter a password:
<input type="password" name="password">
</label>
<hr>

Kindly advise your gender:
<p><input type="radio" name="gender" value="female">female</p>
<p><input type="radio" name="gender" value="male">male</p>
<hr>

Please indicate your age range:
<p><input type="radio" name="agerange" value="less than 10">less than 10</p>
<p><input type="radio" name="agerange" value="10-19">10-19</p>
<p><input type="radio" name="agerange" value="20-29">20-29</p>
<p><input type="radio" name="agerange" value="30-39">30-39</p>
<p><input type="radio" name="agerange" value="40-49">40-49</p>
<p><input type="radio" name="agerange" value="50-59">50-59</p>
<p><input type="radio" name="agerange" value="60-69">60-69</p>
<p><input type="radio" name="agerange" value="70+">70+</p>
<hr>

Now, select your height (in centimetres) from the pull-down menu below:
<br>
<select name="height">
<%
int counter1;
int x = 54;

Object[] heights;              // declares heights array
heights = new Object[219];     // allocates memory to hold 219 elements ( [0], …, [218] )

// populate array
for (counter1 = 0; counter1 < 219; counter1++)
{
    heights[counter1] = x;

	if ( counter1 == 116)
	{
		%>
		<option value=<%=heights[counter1]%> selected><%out.println(heights[counter1]);%></option>
		<%
	} // end if
	else
	{
		%>
		<option value=<%=heights[counter1]%>><%out.println(heights[counter1]);%></option>
		<%
	}	
	%>
  	
<% 	
    x++;
} // end for loop     

%>
</select>
<hr>

and finally, select your weight (in kilograms) from the pull-down menu below:
<br>
<select name="weight">
<%
int counter2;
int y = 0;

Object[] weights;              // declares weights array
weights = new Object[636];     // allocates memory to hold 636 elements ( [0], …, [635] )

// populate array
for (counter2 = 0; counter2 < 636; counter2++)
{
	weights[counter2] = y;

	if ( counter2 == 75)
	{
		%>
		<option value=<%=weights[counter2]%> selected><%out.println(weights[counter2]);%></option>
		<%
	} // end if
	else
	{
		%>
		<option value=<%=weights[counter2]%>><%out.println(weights[counter2]);%></option>
		<%
	}	
	%>
  	
<% 	
    y++;
} // end for loop     

%>
</select>
<hr>

<input type="reset" value="Reset Form" formaction="results.jsp">
<input type="submit" value="Submit Data" formaction="results.jsp">
<hr>

</form>

</html>
<!-- end of form -->