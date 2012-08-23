<?php

// PDO
$user = 'developerspike'
$pass = 'winrar'

$pdo = new PDO(’mysql:host=127.0.0.1;dbname=LaptopDB;charset=UTF-8', $user, $pass);

$p_LPUserName = 'Spike' //Change this to grab the Username from the form control
$p_LPEmail = 'DeveloperSpike@gmail.com' //Change this to grab the email from the form control

print ‘PDO: calling sp with out variables’;
$pdo->query( ‘CALL sp_lpuser_SEARCH($p_LPUserName, $p_LPEmail)’ );
foreach($pdo->query( ‘SELECT @first, @last’ ) as $row)
{
debug($row);
}




$stmt = $dbh->prepare("CALL sp_lpuser_SEARCH(?)");

$p_LPUserName = 'Spike' //Change this to grab the Username from the form control
$p_LPEmail = 'DeveloperSpike@gmail.com' //Change this to grab the email from the form control
$p_Active = 0 //Change this to grab the active bit from the form control

$stmt->bindParam(1, $p_LPUserName, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 45); 
$stmt->bindParam(2, $p_LPEmail, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 75);
$stmt->bindParam(3, $p_Active, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, boolean);

// call the stored procedure
$result = $stmt->execute();

//print ‘PDO: calling sp returning a recordset’;
//foreach($pdo->query( ‘CALL sp_lpuser_SEARCH($p_LPUserName, $p_LPEmail)’ ) as $row)
//{
//debug($row);
//}

$fields_num = mysql_num_fields($result);

echo "<h1>Table: {$table}</h1>";
echo "<table border='1'><tr>";
// printing table headers
for($i=0; $i<$fields_num; $i++)
{
    $field = mysql_fetch_field($result);
    echo "<td>{$field->name}</td>";
}
echo "</tr>\n";
// printing table rows
while($row = mysql_fetch_row($result))
{
    echo "<tr>";

    // $row is array... foreach( .. ) puts every element
    // of $row to $cell variable
    foreach($row as $cell)
        echo "<td>$cell</td>";

    echo "</tr>\n";
}
mysql_free_result($result);
?>
</body></html>