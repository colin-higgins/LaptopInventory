
<!-- include header -->
<?php include('includes/header.php'); ?>
<div class="fullform" >
<!-- include sidebar -->
<?php include('includes/sidebar.php'); ?>
 <!--menubox --> <br />


<div class="loginform" ><form action="laptopaddedit.php" name="laptopform" method="post" >

<table class="maintenancetable" >	
	<tr>
		<td valign="top">Username: 
		</td>
		<td valign="top"><input type="text" name="lastname" />
		</td>
	<tr>
		<td valign="top">Password: 
		</td>
		<td valign="top"><input type="text" name="age" />
		</td>
	</tr>
</table >

<input type="submit" value="Submit" />
<input type="submit" value="Forgot Password?" />

</form>
</div>
</div> <!-- Fullform ends -->

<?php include('includes/footer.php'); ?>
</body>
</html>