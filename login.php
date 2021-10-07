<?php session_start();?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ESWT Admin:-Login</title>
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">
    <!-- Styles -->
    <link href="assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/lib/helper.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/index-style.css" rel="stylesheet">


</head>

<body >

<?php require('dbconnection/connectdb.php');
 // When form submitted, check and create user session.
    function test_alert($msg) {
    echo "<script type='text/javascript'>alert('$msg'); window.location.href='/ESWT/login.php';</script>";
    }
    if (isset($_POST['member_id'])) {

        $member_id = stripslashes($_REQUEST['member_id']);    // removes backslashes
        $member_id = mysqli_real_escape_string($con, $member_id);
        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($con, $password);
        // Check user is exist in the database


        $query    = "SELECT * FROM `member` WHERE member_id='$member_id'
        AND member_password='" . md5($password) . "'";



        $result = mysqli_query($con, $query) or die(mysqli_error($con));
       // $result = mysqli_query($con, $query);
        $rows = mysqli_num_rows($result);
        $data = mysqli_fetch_array($result);


        if ($rows == 1) {
            $_SESSION['member_id'] = $data['member_id'];
            $_SESSION['member_name'] = $data['member_name'];
            // Redirect to user dashboard page
            if($data['member_isAdmin']==0){
                header("Location: ./Tesol/index.php");}
                elseif ($data['member_isAdmin']==1) {
                    header("Location: ./admin");
                }
            } else {
                 test_alert("User ID: ".$member_id."  or Password: ".$password." is Wrong!!!");
            }
        } else {
            require('components/login-component.php');

            }
   ?>



</body>

</html>