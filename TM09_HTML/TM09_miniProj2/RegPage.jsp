<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
	<style type="text/css">
		div{
			width: 60%;
			margin: 0 auto;
		}
		input{
			margin-top:10px; 
		}
		table{
			margin:0 auto;
		}
		h3{
			text-align: center;
		}
	</style>
	</head>
	<body>
		<div>
		<h3>
			Registration Form
		</h3>
		<hr>
		<form method="post" name="myForm" onsubmit="return validf()" action="main">
			<table>
				<tr>
					<td>
					User Id:
					</td>
					<td>
						<input type="text" name="userId">
					</td>
					<td>
						<span id="errId"></span>
					</td>
				</tr>
				<tr>
					<td>
						Password:
					</td>
					<td>
						<input type="password" name="passw">
					</td>
					<td><span id="errpass"></span>
					</td>
				</tr>
				<tr>
					<td>
						Date Of birth:
					</td>
					<td>
						<input type="date" name="date" placeholder="mm/dd/yyyy">
					</td>
					<td><span id="errdate"></span>
					</td>
				</tr>
				<tr>
					<td>
						Gender:
					</td>
					<td>
						<input type="radio" name="gender"><label> Male</label>
						<input type="radio" name="gender"><label> Female</label>
					</td>
					<td><span id="errgen"></span>
					</td>
				</tr>
				<tr>
					<td>
						State:
					</td>
					<td>
						<Select><option>Karnataka</option>
						<option>Uttar pradesh</option>
						<option>Haryana</option>
						<option>Punjab</option>
						<option>Maharashtra</option>
						<option>Karnataka</option>
					</Select>
					</td>
				</tr>
				<tr>
					<td>Contact Number</td>
					<td><input type="text" name="number"></td><td><span id="errphone"></span>
					</td>
				</tr>
				<tr>
					<td>Address:</td><td>
					<textarea rows="2" cols="20" name = "area">
						
					</textarea>
					</td>
					<td><span id="errarea"></span>
					</td>
				</tr>
				<tr>
					<td><input type="hidden" name="jsppages" value="newUser">
						<input type="submit" value="submit">
					</td>
					<td>
						<input type="reset" value="Reset">
					</td>
				</tr>
			</table>
		</form>
	</div>
	</body>
	<script type="text/javascript">
		function validf(){
			var p1 = document.forms["myForm"]["userId"].value;
			var p2 = document.forms["myForm"]["passw"].value;
			var p3 = document.forms["myForm"]["date"].value;
			var p4 = document.forms["myForm"]["gender"].value;
			var p5 = document.forms["myForm"]["number"].value;
			var p6 = document.forms["myForm"]["area"].value;
			document.getElementById("errId").innerHTML = "";
			document.getElementById("errpass").innerHTML = "";
			document.getElementById("errdate").innerHTML = "";
			document.getElementById("errphone").innerHTML = "";
			var reg1= /^\S{4,8}/;
			if(!reg1.test(p1)){
				document.getElementById("errId").innerHTML = "Username is not Valid";
				return false;
			}
			var reg2= /^(?=.*[0-9])(?=.*[A=Z]).{6,}$/;
			if(!reg2.test(p2)){
				document.getElementById("errpass").innerHTML = "Password is not Valid";
				return false;
			}
			var reg3= /^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/;
			if(!reg3.test(p3)){
				var m = p3.substring(0,2);
				var d = p3.substring(3,5);
				var y = p3.substring(6);
				var dob = new Date(d+"/"+m+"/"+y);
				if(dob>new Date()){
				document.getElementById("errdate").innerHTML = "Date is not Valid";
				return false;
			}
			}
			var reg4= /^[0-9]{10}$/;
			if(!reg4.test(p5)){
				document.getElementById("errphone").innerHTML = "Phone number is not Valid";
				return false;
			}
			return true;
		}
	</script>
</html>