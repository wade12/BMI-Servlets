<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>

<form name="Gender" action="results.jsp" method="post">
<p></p>
<h1 style="color:Green">
Gender
</h1>
<p></p>
<hr>

<h3>Thanks&nbsp;
<%=request.getParameter("name")%>, please indicate your gender:</h3>
<p><input type="radio" name="gender" value="female">female</p>
<p><input type="radio" name="gender" value="male">male</p>
<br>

<hr>
<input type="submit" value="Submit" name="gender" formaction="agerange.jsp">
<hr>

</form>

</html>
<!-- end of form -->
