<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>

<style>
body{
    font-family: Arial;
    background:#f2f2f2;
}

.container{
    width:400px;
    height:500px;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
}

input, select{
    width:100%;
    padding:10px;
    margin-top:10px;
    margin-bottom:15px;
    border:1px solid #ccc;
    border-radius:5px;
}

button{
    width:100%;
    padding:10px;
    background:#007bff;
    color:white;
    border:none;
    border-radius:5px;
    font-size:16px;
}

button:hover{
    background:green;
    box-shadow: 2px 2px 5px 2px ;
}
</style>

</head>
<body>

<div class="container">

<h2>Student Registration Form</h2>

<form action="Add_Student" method="post" id="myForm" onsubmit="return playSound(event)">

<label>Name</label>
<input type="text" name="name" placeholder="Enter your name" required>

<label>Email</label>
<input type="email" name="email" placeholder="Enter your email" required>

<label>Course</label>
<input type="text" required placeholder="Type Cource" name="cource">

<label>Phone No</label>
<input type="text" name="phone" placeholder="Enter phone number" required>

<button type="submit" onclick="playSound()">Submit</button>

</form>
<audio id="btnSound" src="sound/Voicy_FAAH.mp3"></audio>
<a href="View_Student.jsp" style="text-decoration: none;pitch-range: 12px">View Student</a>
</div>
<script>
function playSound(e){

e.preventDefault();   // form turant submit hone se rokta hai

var audio = document.getElementById("btnSound");
audio.play();

setTimeout(function(){
document.getElementById("myForm").submit();
},1000);

return false;
}
</script>
</body>
</html>
