<?php

    INCLUDE_ONCE __DIR__."/../component/navbar.php";
    INCLUDE_ONCE __DIR__."/../database/create_initial_state.php";
    
    if(!isset($_GET['dis'])){
        header("Location: ../index.php");
        exit();
    }
    function changer($name):string{
        if($name == "COX_S_BAZAR"){
            return "Cox%27s_Bazar" ;
        }

        return ucfirst(strtolower($name))."";
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../Bangladesh.png">
    <title>District Info</title>
    <link rel="stylesheet" href="../css/component.css"> 
</head>
<body>

        <?php

        echo navfile_navigator("..");
        $name = changer($_GET['dis']);
        $assos = PDO_::initializer(__DIR__."/../database")->get_district($name)[0];
        $image_array= explode(';',$assos["imagePath"]);
        

        ?>
    
<div style="border:1px solid #ccc; padding:15px; margin-bottom:20px; border-radius:4px; font-family:Arial, sans-serif;">
    <h3 style="margin:0 0 10px 0; font-size:20px; color:#222; font-weight:600;">
        <?= htmlspecialchars($assos['District_name']) ?>
    </h3>

    <p style="margin:0 0 10px 0; line-height:1.5; color:#333; font-size:14px;">
        <?= htmlspecialchars($assos['description']) ?>
    </p>

    <div style="display:flex; flex-wrap:wrap; gap:10px;">
        <?php
        foreach($image_array as $ele){
            $ele = trim($ele);
            if(!empty($ele)){
                echo "<img src=\"" . htmlspecialchars($ele) . "\" alt=\"{$assos['District_name']}\" style=\"width:150px; height:auto; border:1px solid #ddd; border-radius:3px; padding:2px;\" />";
            }
        }
        ?>
    </div>
</div>

</body>
</html>