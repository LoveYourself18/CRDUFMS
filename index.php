<?php
require_once("./include/initialize.php");

?>
<?php
// login confirmation
if (isset($_SESSION['USERID'])) {
  redirect(web_root . "admin/index.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>FMS-Login</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="icon" type="image/png" href="<?php echo web_root; ?>plugins/adminlogin/images/icons/favicon.ico" />
  <link href="./admin/dist/css/tabler.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="./style.css">
</head>

<body>

  <main class="login">
    <div class="background"></div>
    <div class="container">
      <img class="logo" src="./admin/static/CBSUA_Logo_Credit_to_PIO_Office.png" alt="CBSUA Logo" width="100">
      <span class="label">CBSUA</span>
      <h2 class="title">Research File Management System</h2>
      <hr>
      <p class="login-msg">Login to your account</p>
      <div class="content">
        <form method="POST">
          <div class="mb-4">
            <label class="form-label">Username</label>
            <input type="text" class="form-control" name="user_email" placeholder="Enter username">
          </div>
          <div class="mb-2">
            <label class="form-label">
              Password
            </label>
            <div class="input-group input-group-flat">
              <input type="password" class="form-control" name="user_pass" placeholder="Password" autocomplete="off">
              <!-- <span class="input-group-text" onclick="pass()">
                <a href="#" class="link-secondary" title="Show password" data-bs-toggle="tooltip">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <circle cx="12" cy="12" r="2" />
                    <path d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7" />
                  </svg>
                </a>
              </span> -->
            </div>
            <div class="form-footer">
              <button type="submit" class="login-btn" name="btnLogin">Login</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </main>
</body>

</html>

<?php

if (isset($_POST['btnLogin'])) {
  $email = trim($_POST['user_email']);
  $upass  = trim($_POST['user_pass']);
  $h_upass = sha1($upass);

  if ($email == '' or $upass == '') {

    message("Invalid Username and Password!", "error");
    redirect("../index.php");
  } else {
    //it creates a new objects of member
    $user = new User();
    //make use of the static function, and we passed to parameters
    $res = $user::userAuthentication($email, $h_upass);
    if ($res == true) {
      message("You login as " . $_SESSION['TYPE'] . ".", "success");
      if ($_SESSION['TYPE'] == 'Administrator') {
        redirect(web_root . "admin/index.php");
      } else {
        redirect(web_root . "./index.php");
      }
    } else {
      message("Account does not exist! Please contact Administrator.", "error");
      redirect(web_root . "./index.php");
    }
  }
}
?>