<h3>This form temporarily out of service</h3>
<form name="contactform" method="post" action="about.php">
<table width="400px">
</tr>
<tr>
 <td valign="top">
  <label for="first_name">First Name: </label>
 </td>
 <td valign="top">
  <input type="text" name="first_name" maxlength="50" size="25">
 </td>
</tr>
 
<tr>
 <td valign="top">
  <label for="last_name">Last Name: </label>
 </td>
 <td valign="top">
  <input type="text" name="last_name" maxlength="50" size="25">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="email">Email: </label>
 </td>
 <td valign="top">
  <input type="text" name="email" maxlength="80" size="25">
 </td>
 
</tr>
<tr>
 <td valign="top">
  <label for="reason">Reason: </label>
 </td>
 <td valign="top">
  <textarea name="reason" maxlength="1000" cols="22" rows="5"></textarea>
 </td>
 
</tr>
<tr>
 <td colspan="2" style="text-align:center">
  <input type="submit" value="Submit"> 
 </td>
</tr>
</table>
</form>

<?php

ini_set("display_errors", "1");
error_reporting(E_ALL);

if(isset($_POST['email'])) {
     
    // EDIT THE 2 LINES BELOW AS REQUIRED
    $email_to = "DeveloperSpike@gmail.com";
    $email_subject = "Website Contact - Lead Source";
     
     
    function died($error) {
        // your error code can go here
        echo "Sorry, but there were error(s) with the form you submitted. ";
        echo "These errors appear below.<br /><br />";
        echo $error."<br /><br />";
        echo "Please go back and fix these errors.<br /><br />";
    }
     
    // validation expected data exists
    if(!isset($_POST['first_name']) ||
        !isset($_POST['last_name']) ||
        !isset($_POST['email']) ||
        !isset($_POST['reason'])) {
        died('Apologies, there appears to be a problem with the form you submitted.');       
    }
     
    $first_name = $_POST['first_name']; // required
    $last_name = $_POST['last_name']; // required
    $email_from = $_POST['email']; // required
    $reason = $_POST['reason']; // required
     
    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
  if(!preg_match($email_exp,$email_from)) {
    $error_message .= 'The Email does not appear to be valid.<br />';
  }
    $string_exp = "/^[A-Za-z .'-]+$/";
  if(!preg_match($string_exp,$first_name)) {
    $error_message .= 'That your real First Name?<br />';
  }
  if(!preg_match($string_exp,$last_name)) {
    $error_message .= 'That your real Last Name?<br />';
  }
  if(strlen($reason) < 5) {
    $error_message .= 'That does not appear to be a valid reason. Please be descriptive.<br />';
  }
  if(strlen($error_message) > 0) {
    died($error_message);
  }
    $email_message = "Form details below.\n\n";
     
    function clean_string($string) {
      $bad = array("content-type","bcc:","to:","cc:","href");
      return str_replace($bad,"",$string);
    }
     
    $email_message .= "First Name: ".clean_string($first_name)."\n";
    $email_message .= "Last Name: ".clean_string($last_name)."\n";
    $email_message .= "Email: ".clean_string($email_from)."\n";
    $email_message .= "Reason: ".clean_string($reason)."\n";
     
     
// create email headers
$headers = 'From: '.$email_from."\r\n".
'Reply-To: '.$email_from."\r\n" .
'X-Mailer: PHP/' . phpversion();

@mail($email_to, $email_subject, $email_message, $headers);  
?>
 
<!-- include your own success html here -->
 
Thank you, we should be in touch soon.
 
<?php
}
?>
