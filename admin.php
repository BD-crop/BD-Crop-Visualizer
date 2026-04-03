<?php
    INCLUDE_ONCE __DIR__."/database/create_initial_state.php";
    if(isset($_POST['submission'])){
        echo "dopes";
        print_r($_POST);
        echo $_POST['district_name'];
        $obj=PDO_::initializer();  
        $obj-> insert_district($_POST['district_name'] , $_POST['description'] ,$_POST['image_url']); 
        header("Location: admin.php");
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
</head>
<body>
        <form action="" method="POST">
            <input type="text" placeholder="district text" name="district_name">
            <br>
            <input type="text" placeholder="district description" name="description">
            <br>
            <input type="text" placeholder="image text box" name="image_url">
            <br>
            <input type="submit" value="submit" name="submission">
        </form>
    <?php




    ?>
</body>
</html>
