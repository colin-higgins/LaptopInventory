
<!-- include header -->
<?php include('includes/header.php'); ?>
<div class="fullform" >
<!-- include sidebar -->
<?php include('includes/sidebar.php'); ?>
 <!--menubox --> <br />


<div class="maintenanceform" ><form action="laptopaddedit.php" name="laptopform" method="post" >
<div id="maintenancebuttons" class="maintbtn" >
<input type="submit" value="Search" />
<input type="submit" value="Add" />
<input type="submit" value="Save" />
<input type="submit" value="Save & Exit" />
<input type="submit" value="Cancel" />
<a class="navLink" href="index.php" class="navigation" target="_self">
<input type="submit" value="Exit" />
</a>
</div>
<h3>User</h3>
<div class="maintenancetbl" ><table >	
	<tr>
		<td valign="top">Username: 
		</td>
		<td valign="top"><input type="text" name="lastname" />
		</td>
	<tr>
	<tr>
		<td valign="top">Email: 
		</td>
		<td valign="top"><input type="text" name="email" />
		</td>
	<tr>
		<td valign="top">Password: 
		</td>
		<td valign="top"><input type="text" name="age" />
		</td>
	</tr>
	<tr>
		<td valign="top">Active: 
		</td>
		<td valign="top"><input type="checkbox" name="chkActive" />
		</td>
	</tr>
</table > </div> <!-- end mainttable div -->

</form>
</div>
</div> <!-- Fullform ends -->

<div class="results" >
<table border="0" cellspacing="2" cellpadding="2">
<tr>
<th><font face="Arial, Helvetica, sans-serif"></font></th>
<th><font face="Arial, Helvetica, sans-serif">Username</font></th>
<th><font face="Arial, Helvetica, sans-serif">Email</font></th>
<th><font face="Arial, Helvetica, sans-serif">Active</font></th>
</tr>
</table>

</div> <!-- results end -->

<?php include('includes/footer.php'); ?>
</body>
</html>