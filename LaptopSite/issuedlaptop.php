
<!-- include header -->
<?php include('includes/header.php'); ?>
<div class="fullform" >
<!-- include sidebar -->
<?php include('includes/sidebar.php'); ?>
 <!--menubox --> <br />

<div class="maintenanceform" ><form action="issuedlaptopaddedit.php" name="issuedlaptopform" method="post" >
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
<h3>Issued Laptop</h3>
<div class="maintenancetbl" ><table >	
	<tr>
		<td valign="top">Name: 
		</td>
		<td valign="top"><input type="text" name="txtName1" />
		</td>
	</tr>
	<tr>
		<td valign="top">idLaptop: 
		</td>
		<td valign="top"><select name="cboidLaptop">
								<option value="1">Laptop 1</option>
								<option value="2">Laptop 2</option>
							</select>
		</td>
	</tr>
	<tr>
		<td valign="top">ASCusername: 
		</td><td valign="top"><input type="text" name="nxtASCusername" />
		</td>
	</tr>
	<tr>
		<td valign="top">Comments: 
		</td>
		<td valign="top"><textarea name="txtComments" maxlength="1000" cols="22" rows="5"></textarea>
		</td>
	</tr>
	<tr>
		<td valign="top">DateIssued: 
		</td>
		<td valign="top"><input type="text" name="datDateIssued" />
		</td>
	</tr>
	<tr>
		<td valign="top">DateReturned: 
		</td>
		<td valign="top"><input type="text" name="datDateReturned" />
		</td>
	</tr>
	<tr>
		<td valign="top">ScheduledDateReturn: 
		</td>
		<td valign="top"><input type="text" name="datScheduledDateReturn" />
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
<th><font face="Arial, Helvetica, sans-serif">Laptop</font></th>
<th><font face="Arial, Helvetica, sans-serif">ASCUsername</font></th>
<th><font face="Arial, Helvetica, sans-serif">DateIssued</font></th>
<th><font face="Arial, Helvetica, sans-serif">DateReturned</font></th>
<th><font face="Arial, Helvetica, sans-serif">ScheduleReturn</font></th>
<th><font face="Arial, Helvetica, sans-serif">Active</font></th>
</tr>
</table>


</div> <!-- results end -->

<?php include('includes/footer.php'); ?>
</body>
</html>