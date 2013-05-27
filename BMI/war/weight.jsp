<!DOCTYPE html>

<html>

<form name="Weight" action="results.jsp" method="post">
<p></p>
<h1 style="color:Green">
Weight
</h1>
<p></p>
<hr>

<h3>Please indicate your weight (in kilograms) from the pull-down menu below:</h3>
<select>

<%
int counter;
int x = 0;

Object[] weights;              // declares weights array
weights = new Object[636];     // allocates memory to hold 636 elements ( [0], …, [635] )

// populate array
for (counter = 0; counter < 636; counter++)
{
	weights[counter] = x;

	if ( counter == 75)
	{
		%>
		<option value="weight" selected><%out.println(weights[counter]);%></option>
		<%
	} // end if
	else
	{
		%>
		<option value="weight"><%out.println(weights[counter]);%></option>
		<%
	}	
	%>
  	
<% 	
    x++;
} // end for loop     

%>
</select>

<hr>
<input type="submit" value="Submit" name="weight" formaction="results.jsp">
<hr>

</form>

</html>
<!-- end of form -->