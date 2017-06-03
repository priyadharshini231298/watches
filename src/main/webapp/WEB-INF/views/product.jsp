<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="p1" uri="http://java.sun.com/jsp/jstl/core" %>
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
}
</style>
<c:url value="/product" var="p"/>
<form:form action="${p}" method="POST" commandName="product">
 <br><br>
  <fieldset>
    <legend><h3>Product Details:</h3></legend>
     <br><br>
    Product ID          :
    <form:input type="text" name="productid" size="150" path="p_id"/>
    <br><br>
    Product name        :
    <form:input type="text" name="productname" size="150" path="p_name"/>
    <br><br>
    Product Quantity    :
    <form:input type="text" name="productquantity" size="150" path="p_q"/>
    <br><br>
    Product cost        :
    <form:input type="text" name="productcost" size="150" path="p_c"/>
    <br><br>
     Product description:
    <form:input type="text" name="productdescription" size="150" path="des"/>
    <br><br>
<!--      Product Category: -->
<!--      <select name="category" > -->
<!--     <option value="a">A</option> -->
<!--     <option value="b">B</option> -->
<!--     <option value="c">C</option> -->
<!--     <option value="d">D</option> -->
<!--   </select> -->
<!--    <br><br> -->
<!--     Product Supplier: -->
<!--      <select name="supplier" > -->
<!--     <option value="a">A</option> -->
<!--     <option value="b">B</option> -->
<!--     <option value="c">C</option> -->
<!--     <option value="d">D</option> -->
<!--   </select> -->
    <center><input  type="submit" value="Submit">
    <input type="reset" value="Reset">
    <button type="button" class="cancelbtn">Cancel</button></center>
  </fieldset>
</form:form>
<br><br><br><br>

<table style="width:100%">
  <tr>
    <th>Product ID</th>
    <th> Product name</th> 
    <th> Product Quantity</th>
    <th> Product cost</th> 
    <th> Product Description</th>
    <th>Edit the Details</th>
<th>Cancel the Details</th>
 </tr>
  <p1:forEach items="${products}" var="product">
  <tr>
    <td>${product.getP_id()}</td>
    <td>${product.getP_name()}</td>
    <td>${product.getP_q()}</td>
    <td>${product.getP_c()}</td>
    <td>${product.getDes()}</td>
    <td><button type="button" class="editbtn">Edit</button></td>
    <td>  <button type="button" class="deletebtn">Delete</button>
  </tr></p1:forEach>
<!-- <tr> -->
<!--     <td>22</td> -->
<!--     <td>Sonata watch</td> -->
<!--     <td>6</td> -->
<!--     <td>2000</td> -->
<!--     <td>Trendy watch for the present youth</td> -->
<!--     <td><button type="button" class="editbtn">Edit</button></td> -->
<!--     <td>  <button type="button" class="deletebtn">Delete</button> -->
<!--   </tr> -->
  
</table>


</body>
</html>
