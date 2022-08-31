<script>
		var seconds = 0;
		function displayseconds() {
			seconds +=1;
			document.getElementById("secondsdisplay").innerText="";	
		}
		setInterval(displayseconds,1000);

		function redirectpage() {
			window.location = "index.php";
		}
		setTimeout('redirectpage()', 7000);
</script>

<style>
   .container .content-page{
   	justify-content: center;
   	text-align: center;
   	font-size: x-large;
   	color: #008B8B;
   	padding: 5px;

   }
</style>

<div class="container">
	<div class="content-page">
        <h2>Your Message Has Been Sent!</h2>
        <p>Please wait for the confirmation, you will hear from us shortly.</p>     
        <div id= "secondsdisplay" ></div>
   </div>
</div>