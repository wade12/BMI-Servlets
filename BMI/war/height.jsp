<!DOCTYPE html>

<html>

<form name="Height" action="results.jsp" method="post">
<p></p>
<h1 style="color:Green">
Height
</h1>
<p></p>
<hr>


<h3>Please indicate your height (in centimetres) from the pull-down menu below:</h3>
<br>
<hr>

<select name="height">
<%
int counter;
int x = 54;

Object[] heights;              // declares heights array
heights = new Object[219];     // allocates memory to hold 219 elements ( [0], …, [218] )

// populate array
for (counter = 0; counter < 219; counter++)
{
    heights[counter] = x;

	if ( counter == 116)
	{
		%>
		<option value="height" selected><%out.println(heights[counter]);%></option>
		<%
	} // end if
	else
	{
		%>
		<option value="height"><%out.println(heights[counter]);%></option>
		<%
	}	
	%>
  	
<% 	
    x++;
} // end for loop     

%>
</select>

<hr>
<input type="submit" value="Submit" name="height" formaction="weight.jsp">
<hr>

</form>

</html>
<!-- end of form -->