<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="s1" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:url value="/supplier" var="s"/>
<form:form action="${s}" method="POST" commandName="supplier">
 <br><br>
  <fieldset>
    <legend><h3>Supplier Details:</h3></legend>
     <br><br>
    Supplier ID:
    <form:input type="text" name="supplierid" size="150" path="S_id"/>
    <br><br><br><br>
    Supplier name:
    <form:input type="text" name="suppliername" size="150" path="S_name"/>
    <br><br><br><br>
    Supplier Number:
    <form:input type="number" name="suppliernumber" size="150" path="S_num"/>
    <br><br><br><br>
    Supplier Product:
    <form:input type="text" name="supplierproduct" size="150" path="S_product"/>
    <br><br><br><br>
    <center><input  type="submit" value="Submit">
    <input type="reset" value="Reset">
   <button type="button" class="cancelbtn">Cancel</button></center>
  </fieldset>
</form:form>
<br><br><br><br>

<style>
table, th, td {
    text-align:center;
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
<table style="width:100%">
  <tr>
    <th>Supplier ID</th>
    <th>Supplier name</th> 
    <th>Supplier Number</th>
   <th>Supplier Product</th>
   <th>Edit the Details</th>
<th>Cancel the Details</th>
  </tr>
    <s1:forEach items="${suppliers}" var="supplier">
  <tr>
    <td>${supplier.getS_id()}</td>
    <td>${supplier.getS_name()}</td>
    <td>${supplier.getS_num() }</td>
    <td>${supplier.getS_product()}</td>
    <td><button type="button" class="editbtn">Edit</button></td>
    <td>  <button type="button" class="deletebtn">Delete</button>
  </tr></s1:forEach>>
<!--   <tr> -->
<!--     <td>222</td> -->
<!--     <td>BBB</td> -->
<!--     <td>09887654321</td> -->
<!--     <td>Sonata watch</td> -->
<!--     <td><button type="button" class="editbtn">Edit</button></td> -->
<!--     <td>  <button type="button" class="deletebtn">Delete</button> -->
<!--   </tr> -->
</table>


</body>
</html>
