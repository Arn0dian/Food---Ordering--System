<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "foodorder";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM orders";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  echo "<table border><tr><th>Order ID</th> <th>Food ID</th> <th>Food</th> <th>Price</th> <th>Quantity</th> <th>Order Date</th> <th>User</th></tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["order_ID"] ."</td><td>" . $row["F_ID"]. "</td><td>" . $row["foodname"]. "</td><td>" . $row["price"]. "</td><td>" . $row["quantity"]."</td><td>". $row["order_date"]."</td><td>".$row["username"]."</td></tr>" . "<br>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
$conn->close();
?>