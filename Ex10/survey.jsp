<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Survey</title>
</head>
<body bgcolor="#AABBCC" >
<form method="post" action="/ProductSales/rest/prediction">
<div> 	<hr> 	<br> 		<center>
<b> Welcome to Product Survey</b>
</center>
<br>
<hr>
<table border="0" cellspacing="100%"  align="left" style="width: 1282px; height: 176px; ">
<tr> 	<td>Product Name ? <br>
<input type="radio" name="product" value="Product1" checked> Product1<br>
<input type="radio" name="product" value="Product2"> Product2<br>
<input type="radio" name="product" value="Product3"> Product3<br>
</td> 		</tr> 		<tr >
<td>How often you use this product ? <br>
<input type="radio" name="use" value="1" checked> Strongly Dislike the product<br>
<input type="radio" name="use" value="2"> Dislike the product.<br>
<input type="radio" name="use" value="3"> May Use the product.<br>
<input type="radio" name="use" value="4"> Like using the product.<br>
<input type="radio" name="use" value="5"> Use it every day. <br>				</td> 	</tr> 	<tr>
<td width="t">Will you buy this product ?
<br> <input 	type="radio" name="buy" value="1" checked> Will never buy<br>
<input type="radio" name="buy" value="2"> May not Buy<br>
<input type="radio" name="buy" value="3"> May Buy 						Occasionally <br> <input type="radio" name="buy" value="4">
Will Buy.<br> <input type="radio" name="buy" value="5"> Strongly Buy the product <br>	</td> 		</tr> 		<tr>  		<td> 	<center>
<input type="submit" value="Submit Feedback" style="cue:" />
</center> 	</td> 	</tr> 	</table>	<br>
</div>  	</form>    </body>   </html>
