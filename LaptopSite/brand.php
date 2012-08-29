
<!-- include header -->
<?php include('includes/header.php'); ?>
<div class="fullform" >
<!-- include sidebar -->
<?php include('includes/sidebar.php'); ?>
 <!--menubox --> <br />


<div class="maintenanceform" >
<div id="maintenancebuttons" class="maintbtn" >
<input type="submit" value="Search" />
<input type="submit" value="Add" />
<input type="submit" value="Save" />
<input type="submit" value="Save & Exit" />
<input type="submit" value="Cancel" />
<a class="navLink" href="Model.php" class="navigation" target="_self">
<input type="submit" value="Exit" />
</a>
</div>
<h3>Brand</h3>
<div class="maintenancetbl" >
<form action="modeladdedit.php" name="modelform" method="post" >
<table >	
	<tr>
		<td valign="top">Name: 
		</td>
		<td valign="top"><input type="text" name="txtName1" />
		</td>
	</tr>
	<tr>
		<td valign="top">Comments: 
		</td>
		<td valign="top"><textarea name="txtComments" maxlength="1000" cols="22" rows="5"></textarea>
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
<th><font face="Arial, Helvetica, sans-serif">Name</font></th>
<th><font face="Arial, Helvetica, sans-serif">Comments</font></th>
<th><font face="Arial, Helvetica, sans-serif">Active</font></th>
</tr>
</table>

</div> <!-- results end -->

<?php include('includes/footer.php'); ?>
</body>
</html>