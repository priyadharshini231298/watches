<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<style>
body
{
background-color:white
}

table, th, td {
    text-align:center;
    border: 1px solid #e5e5e5;
    border-collapse: collapse;
}
@media screen and (max-width: 300px) {
    .editbtn, .cancelbtn ,.deletebtn{
       width: 10%;
    }
</style>
<c:url value="/category" var="c"/>
<form:form action="${c} " method="POST" commandName="category">
<br><br>
  <fieldset>
    <legend><h3>Product Category:</h3></legend>
     <br><br>
    Category ID:
    <form:input type="text" name="categoryid" size="150" path="C_id"/>
    <br><br><br><br>
    Category name:
    <form:input type="text" name="categoryname" size="150" path="C_name"/>
    <br><br><br><br>
    Sub-category name:
    <form:input type="text" name="subcategoryname" size="150" path="subC_name"/>
    <br><br><br><br>
    <center><input  type="submit" value="Submit">
    <input type="reset" value="Reset">
    <button type="button" class="cancelbtn">Cancel</button></center>
  </fieldset>
</form:form>
<br><br><br><br>


<table style="width:100%">
  <tr>
    <th>Category ID</th>
    <th>Category Name</th> 
    <th>Sub-Category Name</th>
    <th>Edit the Details</th>
<th>Cancel the Details</th>
  </tr>
  <c1:forEach items="${categories}" var="category">
  <tr>
    <td>${category.getC_id()}</td>
    <td>${category.getC_name()}</td>
    <td>${category.getSubC_name()}</td>
    <td><a href="<c1:url value="/editcategory/${category.getC_id()}"/>" class="editbtn">Edit</a></td>
    <td> <a href="<c1:url value="/deletecategory/${category.getC_id()}"/>" class="deletebtn">Delete</a></td>
  </tr></c1:forEach>
<!--   <tr> -->
<!--     <td>2</td> -->
<!--     <td>Watch</td> -->
<!--     <td>Sonata</td> -->
<!--     <td><button type="button" class="editbtn">Edit</button></td> -->
<!--     <td>  <button type="button" class="deletebtn">Delete</button> -->
<!--   </tr> -->
</table>


</body>
</html>
