<%@page import="com.controller.ShowExamDetails"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
b{
    font-size: xx-large;
}
#clock{
    position: absolute;
    left: 1200px;
    top: 100px;
    font-size: xx-large;
}
h2{
	text-align: center;
}
body{
    background: linear-gradient(to right, springgreen, rgb(253, 253, 53));
}
.questions{
position: absolute;
margin-top:120px;
left:170px;
font-size:30px;
}
#startButton{
position: absolute;
margin-top:220px;
left:630px;
width:100px;
height:50px;
font-weight:bold;
font-size:130%;
background-color:rgb(250, 156, 140);
}
#startButton:hover{
background-color:black;
color:white;
}
#result{
font-size:large;
text-align:center;
}
#buttons{
visibility:hidden;
}
</style>
<title>HTML Exam</title>
</head>
<body>
	
	<h2><u>HTML Exam</u></h2>
	
	<div id="clock">
    <b id="hour">--</b><label> &nbsp;:&nbsp;</label><b id="min">--</b>
   
   
</div>
<br> <button id="startButton" onclick="clcok()">Start</button>
	
	<div>
	<div class="questions" id="question1">
	<p>1)Which of the following HTML attribute is used to define inline styles?<br>
		<input type="radio" name="answer1"  value="style">style<br>
		<input type="radio" name="answer1"  value="type">type<br>
		<input type="radio" name="answer1"  value="class">class<br>
		<input type="radio" name="answer1"  value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question2">
	<p>2)A program in HTML can be rendered and read by -<br>
		<input type="radio" name="answer2" value="Web browser">Web browser<br>
		<input type="radio" name="answer2" value="Server">Server<br>
		<input type="radio" name="answer2" value="Interpreter">Interpreter<br>
		<input type="radio" name="answer2" value="None of the above">None of the above<br>
	
	</p>
	</div>
	<div class="questions" id="question3">
	<p>3)The tags in HTML are -<br>
		<input type="radio" name="answer3" value="case-sensitive">case-sensitive<br>
		<input type="radio" name="answer3" value="in upper case">in upper case<br>
		<input type="radio" name="answer3" value="not case sensitive">not case sensitive<br>
		<input type="radio" name="answer3" value="in lowercase">in lowercase<br>
		
	</p>
	</div>
	<div class="questions" id="question4">
	<p>4)Which of the following are the attributes of the tag?<br>
		<input type="radio" name="answer4" value="method">method<br>
		<input type="radio" name="answer4" value="action">action<br>
		<input type="radio" name="answer4" value="Both (a) & (b)">Both (a) & (b)<br>
		<input type="radio" name="answer4" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question5">
	<p>5)HTML is a subset of ______<br>
		<input type="radio" name="answer5" value="SGMD">SGMD<br>
		<input type="radio" name="answer5" value="SGML">SGML<br>
		<input type="radio" name="answer5" value="SGMH">SGMH<br>
		<input type="radio" name="answer5" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question6">
	<p>6)To create HTML page, you need _____<br>
		<input type="radio" name="answer6" value="Web browser">Web browser<br>
		<input type="radio" name="answer6" value="text editor">text editor<br>
		<input type="radio" name="answer6" value="Both [A] and [B]">Both [A] and [B]<br>
		<input type="radio" name="answer6" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question7">
	<p>7)Adding a border to your image helps the visitor to recognize it as what?<br>
		<input type="radio" name="answer7" value="A frame">A frame<br>
		<input type="radio" name="answer7" value="A link">A link<br>
		<input type="radio" name="answer7" value="A picture">A picture<br>
		<input type="radio" name="answer7" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question8">
	<p>8)Which program do you need to write HTML?<br>
		<input type="radio" name="answer8" value="A graphics program">A graphics program<br>
		<input type="radio" name="answer8" value="Any text editor">Any text editor<br>
		<input type="radio" name="answer8" value="HTML -development suite 4">HTML -development suite 4<br>
		<input type="radio" name="answer8" value="All of the above">All of the above<br>
	</p>
	</div>
	<div class="questions" id="question9">
	<p>9)In HTML, tags that include both on and off tag are called<br>
		<input type="radio" name="answer9" value="comment tag">comment tag<br>
		<input type="radio" name="answer9" value="document tag">document tag<br>
		<input type="radio" name="answer9" value="container tag">container tag<br>
		<input type="radio" name="answer9" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question10">
	<p>10)When is the content of a table shown?<br>
		<input type="radio" name="answer10" value="Before the border loads">Before the border loads<br>
		<input type="radio" name="answer10" value="After the table is loaded">After the table is loaded<br>
		<input type="radio" name="answer10" value="In pieces as it loads">In pieces as it loads<br>
		<input type="radio" name="answer10" value="None of the above">None of the above<br>
		
	</p>
	
	</div>
	
</div>
<p id="result"></p>
<div id="buttons">
<button onclick="qu()" style="margin-left:650px;margin-top:380px;">Next</button>
<button onclick="ans()">submit</button>
</div>
</body>
</html>
<script>
var num=1;
var mark=0;
function ans(){
	var ans1=document.getElementsByName("answer1");
	var ans2=document.getElementsByName("answer2");
	var ans3=document.getElementsByName("answer3");
	var ans4=document.getElementsByName("answer4");
	var ans5=document.getElementsByName("answer5");
	var ans6=document.getElementsByName("answer6");
	var ans7=document.getElementsByName("answer7");
	var ans8=document.getElementsByName("answer8");
	var ans9=document.getElementsByName("answer9");
	var ans10=document.getElementsByName("answer10");
	
	 document.getElementById("question1").style.visibility="hidden";
     document.getElementById("question2").style.visibility="hidden";
     document.getElementById("question3").style.visibility="hidden";
     document.getElementById("question4").style.visibility="hidden";
     document.getElementById("question5").style.visibility="hidden";
     document.getElementById("question6").style.visibility="hidden";
     document.getElementById("question7").style.visibility="hidden";
     document.getElementById("question8").style.visibility="hidden";
     document.getElementById("question9").style.visibility="hidden";
     document.getElementById("question10").style.visibility="hidden";
     
	
	
		//answer 1
		const rbs=document.querySelectorAll('input[name="answer1"]');
		for(const rb of rbs){
			if(rb.checked){
				//selectedvalue=rb.value;
				if(rb.value=="style"){
					mark++;
				}
				break;
			}
		}
		
		//answer 2
		const rbs2=document.querySelectorAll('input[name="answer2"]');
		for(const rb2 of rbs2){
			if(rb2.checked){
				if(rb2.value=="Web browser"){
					mark++;
				}
				break;
			}
		}
		
		//answer 3
		const rbs3=document.querySelectorAll('input[name="answer3"]');
		for(const rb3 of rbs3){
			if(rb3.checked){
				if(rb3.value=="not case sensitive"){
					mark++;
				}
				break;
			}
		}
		
		//answer 4
		const rbs4=document.querySelectorAll('input[name="answer4"]');
		for(const rb4 of rbs4){
			if(rb4.checked){
				if(rb4.value=="Both (a) & (b)"){
					mark++;
				}
				break;
			}
		}
		
		//answer 5
		const rbs5=document.querySelectorAll('input[name="answer5"]');
		for(const rb5 of rbs5){
			if(rb5.checked){
				if(rb5.value=="SGML"){
					mark++;
				}
				break;
			}
		}
		
		//answer 6
		const rbs6=document.querySelectorAll('input[name="answer6"]');
		for(const rb6 of rbs6){
			if(rb6.checked){
				if(rb6.value=="Both [A] and [B]"){
					mark++;
				}
				break;
			}
		}
		
		//answer 7
		const rbs7=document.querySelectorAll('input[name="answer7"]');
		for(const rb7 of rbs7){
			if(rb7.checked){
				if(rb7.value=="A link"){
					mark++;
				}
				break;
			}
		}
		
		//answer 8
		const rbs8=document.querySelectorAll('input[name="answer8"]');
		for(const rb8 of rbs8){
			if(rb8.checked){
				if(rb8.value=="Any text editor"){
					mark++;
				}
				break;
			}
		}
		
		//answer 9
		const rbs9=document.querySelectorAll('input[name="answer9"]');
		for(const rb9 of rbs9){
			if(rb9.checked){
				if(rb9.value=="container tag"){
					mark++;
				}
				break;
			}
		}
		
		//answer 10
		const rbs10=document.querySelectorAll('input[name="answer10"]');
		for(const rb10 of rbs10){
			if(rb10.checked){
				if(rb10.value=="After the table is loaded"){
					mark++;
				}
				break;
			}
		}
		
		console.log(mark);
		
		
		
		document.getElementById("result").innerHTML="Your Mark Is: "+mark;	

		   clearInterval(inter);
		
		document.getElementById("buttons").style.visibility="hidden";

}

		document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
      
function qu(){
	
  
    if(num==0){
    	
        document.getElementById("question1").style.visibility="visible";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
	num++;  
}
else if(num==1){
    document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="visible";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        num++; 
}

else if(num==2){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="visible";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        num++;
}
else if(num==3){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="visible";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        num++;
}
else if(num==4){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="visible";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        num++;
}
else if(num==5){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="visible";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        num++;
}
else if(num==6){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="visible";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        num++;
}
else if(num==7){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="visible";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        num++;
}
else if(num==8){
   	 	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="visible";
        document.getElementById("question10").style.visibility="hidden";
        num++;
}
else if(num==9){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="visible";
        num++;
}
else if(num==10){
	document.getElementById("question1").style.visibility="hidden";
    document.getElementById("question2").style.visibility="hidden";
    document.getElementById("question3").style.visibility="hidden";
    document.getElementById("question4").style.visibility="hidden";
    document.getElementById("question5").style.visibility="hidden";
    document.getElementById("question6").style.visibility="hidden";
    document.getElementById("question7").style.visibility="hidden";
    document.getElementById("question8").style.visibility="hidden";
    document.getElementById("question9").style.visibility="hidden";
    document.getElementById("question10").style.visibility="hidden";
}
}
document.getElementById("hour").style.color="green";
document.getElementById("min").style.color="green";    

var min=0;
var hour=15;
var inter=0;
function clcok(){
	document.getElementById("buttons").style.visibility="visible";
	document.getElementById("startButton").style.visibility="hidden";
	document.getElementById("question1").style.visibility="visible";
    document.getElementById("question2").style.visibility="hidden";
    document.getElementById("question3").style.visibility="hidden";
    document.getElementById("question4").style.visibility="hidden";
    document.getElementById("question5").style.visibility="hidden";
    document.getElementById("question6").style.visibility="hidden";
    document.getElementById("question7").style.visibility="hidden";
    document.getElementById("question8").style.visibility="hidden";
    document.getElementById("question9").style.visibility="hidden";
    document.getElementById("question10").style.visibility="hidden";
inter=setInterval(clock,1000);

}

function clock(){

if(hour==0 && min==1)  {
   clearInterval(inter);
}

   console.log(min);

if(min==0){
hour--;
console.log(hour);
 min=60;
}
if(hour==7 && min==1){
document.getElementById("hour").style.color="red";
document.getElementById("min").style.color="red";
}
min--;
document.getElementById("hour").innerHTML=hour;
document.getElementById("min").innerHTML=min;
if(hour==0 && min==0)  {
    document.getElementById("hour").innerHTML="--";
    document.getElementById("min").innerHTML="--";
	 document.getElementById("question1").style.visibility="hidden";
     document.getElementById("question2").style.visibility="hidden";
     document.getElementById("question3").style.visibility="hidden";
     document.getElementById("question4").style.visibility="hidden";
     document.getElementById("question5").style.visibility="hidden";
     document.getElementById("question6").style.visibility="hidden";
     document.getElementById("question7").style.visibility="hidden";
     document.getElementById("question8").style.visibility="hidden";
     document.getElementById("question9").style.visibility="hidden";
     document.getElementById("question10").style.visibility="hidden";
     
     console.log(mark);
		document.getElementById("result").innerHTML="Your Mark Is: "+mark;	
}


}
</script>