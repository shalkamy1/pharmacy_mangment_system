<?php
    
    $servername = "localhost"; 
  
// In my case, user name will be root 
$username = "root"; 

// Password is empty 
$password = ""; 
$dbName="pharmacy";
$conn=mysqli_connect($servername,$username,$password,$dbName);
$selcet="SELECT * FROM `employee`";

$my_data=mysqli_query($conn,$selcet);
?>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Medic Care Bootstrap 5 CSS Template</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <link href="../css/bootstrap-icons.css" rel="stylesheet">

        <link href="../css/owl.carousel.min.css" rel="stylesheet">

        <link href="../css/owl.theme.default.min.css" rel="stylesheet">

        <link href="../css/templatemo-medic-care.css" rel="stylesheet">
        </head>
        <Body>
<div class="container col md-5">
<h1 class="text-center text-primary">list all employees</h1>
<div class="card">
  <div class="card-body">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Email</th>
      <th scope="col">salray</th>
      <th scope="col">performance</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach($my_data as $item) :?>
        <tr>
      <th ><?= $item['employee_id']?> </th>
      <td><?= $item['first_name']?></td>
      <td><?= $item['last_name']?></td>
      <td><?= $item['email']?></td>
      <td> <?= $item['salary']?></td>
      <td> <?= $item['performance']?></td>
    </tr>
    <?php endforeach ;?>
    
    
  </tbody>
</table>
  </div>
</div>

</div>



        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.bundle.min.js"></script>
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/scrollspy.min.js"></script>
        <script src="../js/custom.js"></script>
<!--

TemplateMo 566 Medic Care

https://templatemo.com/tm-566-medic-care

-->
    </body>
</html>
