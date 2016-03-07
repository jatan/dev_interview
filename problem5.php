<?php
if(isset($_POST['date'])){
    $date = $_POST['date'];


    $db_connection = new mysqli("localhost","root","","dev_interview");

    if (!$db_connection) {
        die("Connection failed!!!!!!");
    }
    $sql = "SELECT SUM(od.quantity) AS quantity, SUM(od.quantity*p.price) AS total
			FROM `order` AS o
			INNER JOIN `order_details` AS od ON o.id = od.o_id
			INNER JOIN `product` AS p ON p.id = od.p_id
			WHERE o.date = '$date'";
    $result = $db_connection->query($sql)->fetch_assoc();
    if(!$result){
        die('Query Failed!!!!!!!!!!!');
    }
}
?>
<!DOCTYPE html>
<html>
<body>

<form method="post">
    Date:
    <input type="date" name="date">
    <input type="submit">
</form>
<br/>

<?php
if(isset($result)){
    echo $date.'<br/>';
    echo $result['quantity'].'<br/>';
    echo $result['total'];
}?>
</body>
</html>
