
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
<h3>Laptop</h3>
<div class="maintenancetbl" ><table >	
	<tr>
		<td valign="top">Name: 
		</td>
		<td valign="top"><input type="text" name="txtName1" />
		</td>
	</tr>
	<tr>
		<td valign="top">Model: 
		</td>
		<td valign="top"><select name="cboidModel">
							<option value="1">MSI - SP15</option>
							<option value="2">MSI - SP13</option>
							<option value="3">Nexlink - EL80</option>
							<option value="4">Nexlink - EL82</option>
						</select>
		</td>
	</tr>
	<tr>
		<td valign="top">NetworkName: 
		</td>
		<td valign="top"><input type="text" name="txtNetworkName" />
		</td>
	</tr>
	<tr>
		<td valign="top">WirelessMAC: 
		</td>
		<td valign="top"><input type="text" name="txtWirelessMac" />
		</td>
	</tr>
	<tr>
		<td valign="top">PhysicalMAC: 
		</td>
		<td valign="top"><input type="text" name="txtPhysicalMAC" />
		</td>
	</tr>
	<tr>
		<td valign="top">SerialNumber: 
		</td>
		<td valign="top"><input type="text" name="txtSerialNumber" />
		</td>
	</tr>
	<tr>
		<td valign="top">OperatingSystem: 
		</td>
		<td valign="top"><input type="text" name="cboOperatingSystem" />
		</td>
	</tr>
	<tr>
		<td valign="top">ProcessorType: 
		</td>
		<td valign="top"><select name="cboProcessorType">
								<option value="1">64 bit</option>
								<option value="2">32 bit</option>
								<option value="3">16 bit</option>
							</select>
		</td>
	</tr>
	<tr>
		<td valign="top">RAM: 
		</td><td valign="top"><input type="text" name="nxtRAM" />
		</td>
	</tr>
	<tr>
		<td valign="top">Comments: 
		</td>
		<td valign="top"><textarea name="txtComments" maxlength="1000" cols="22" rows="5"></textarea>
		</td>
	</tr>
	<tr>
		<td valign="top">Loaner: 
		</td>
		<td valign="top"><input type="checkbox" name="chkLoaner" />
		</td>
	</tr>
	<tr>
		<td valign="top">InStock: 
		</td>
		<td valign="top"><input type="checkbox" name="chkInStock" />
		</td>
	</tr>
	<tr>
		<td valign="top">ForParts: 
		</td>
		<td valign="top"><input type="checkbox" name="chkForParts" />
		</td>
	</tr>
	<tr>
		<td valign="top">DateDecomissioned: 
		</td>
		<td valign="top"><input type="text" name="datDateDecomissioned" />
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
<th><font face="Arial, Helvetica, sans-serif">Model</font></th>
<th><font face="Arial, Helvetica, sans-serif">NetworkName</font></th>
<th><font face="Arial, Helvetica, sans-serif">WirelessMAC</font></th>
<th><font face="Arial, Helvetica, sans-serif">Serial#</font></th>
<th><font face="Arial, Helvetica, sans-serif">Loaner</font></th>
<th><font face="Arial, Helvetica, sans-serif">InStock</font></th>
<th><font face="Arial, Helvetica, sans-serif">Active</font></th>
</tr>
</table>

</div> <!-- results end -->

<?php include('includes/footer.php'); ?>
</body>
</html>