<!DOCTYPE html>
<html>
<head>
  <title>Research Group Associates</title>
</head>
<body>
<h1>Research Group Associates</h1>
<?php
  $servername = "localhost";
  $username = "root";
  $password = "1234";
  $dbname = "webdata";
  $conn = new mysqli($servername, $username, $password, $dbname);


  $result = $conn->query("SELECT * FROM associates;");
  while ($row = $result->fetch_row())  {
    echo "<p><b>" . $row[1] . "</b><br/><i>" . $row[2] . "</i>, " . $row[3] . "<ul>";
    $result2 = $conn->query("SELECT * FROM contacts WHERE associate='" . $row[0] . "'")
;
    while ($row2 = $result2->fetch_row()) {
      echo "<li>" . $row2[2] . " : " . $row2[3] . "</li>";
    }
    echo "</ul></p>";
  }

  $conn->close();
?>
</body>
</html>
