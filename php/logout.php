<?php

include('./learners_crib_resource.php');

if (isset($_SESSION['resource_centre_user_id'])) {
    session_destroy();
    setcookie('resource_centre_user_id', '', time() - 100 );
}
