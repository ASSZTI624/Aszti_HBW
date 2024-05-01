<?php 

require('admin/inc/db_config.php');
require('admin/inc/essentials.php');

date_default_timezone_set("Europe/Budapest");

session_start();

if (!(isset($_SESSION['login']) && $_SESSION['login'] == true)) {
    redirect('index.php');
}

if (isset($_POST['just_book'])) {
    // Handle direct booking without payment
    $frm_data = filteration($_POST);
    $ORDER_ID = 'ORD_' . $_SESSION['uId'] . random_int(11111, 9999999);    

    $query1 = "INSERT INTO `booking_order` (`user_id`, `room_id`, `check_in`, `check_out`, `order_id`, `booking_status`) VALUES (?, ?, ?, ?, ?, 'booked')";

    insert($query1, [
        $_SESSION['uId'],
        $_SESSION['room']['id'],
        $frm_data['checkin'],
        $frm_data['checkout'],
        $ORDER_ID
    ], 'issss');

    $booking_id = mysqli_insert_id($con);

    $query2 = "INSERT INTO `booking_details` (`booking_id`, `room_name`, `price`, `total_pay`, `user_name`, `phonenum`, `address`) VALUES (?, ?, ?, ?, ?, ?, ?)";

    insert($query2, [
        $booking_id,
        $_SESSION['room']['name'],
        $_SESSION['room']['price'], // Assuming price is calculated beforehand
        $_SESSION['room']['price'], // Use room price as paid amount for "Just Book"
        $frm_data['name'],
        $frm_data['phonenum'],
        $frm_data['address']
    ], 'issssss');

    redirect('pay_status.php?order=' . $ORDER_ID);
}

?>
