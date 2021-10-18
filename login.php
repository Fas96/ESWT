<?php require("components/header.php")?>

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