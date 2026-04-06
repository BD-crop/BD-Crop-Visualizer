<?php
  INCLUDE_ONCE __DIR__."/component/navbar.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BD Crop</title>
    <link rel="icon" type="image/x-icon" href="./Bangladesh.png">
    <link rel="stylesheet" href="./css/component.css">
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>



    <?php
        echo navfile_navigator(".");

    ?>
    <h3 id="make">Select a  <select  id="selectType">
            <option value="District">District</option>
            <option value="Country">Country</option>
        </select></h3>
            <h3 id="location_name" ></h3>

<div class="container " id="district">
  <div class="card image-card">
    <img src="./paddy-harvest.webp" alt="A picture of farmers">
  </div>

  <div class="card map-card">

    <?php readfile("./component/Bangladesh District svg.svg"); ?>

  </div>
</div> 

<div class="container" id="world">
    <?php readfile("./component/world svg.svg"); ?>


</div>



<script >

  world.style.display="none";
  selectType.addEventListener("change" , function(){
      if(this.value==="District"){
        world.style.display="none";
        district.style.display="flex";
      }
      else if(this.value==="Country"){
        world.style.display="flex";
        district.style.display="none";
      }
  });
  let path = document.querySelectorAll("path");
  path.forEach((element) => {
    element.style.fill="white";
    element.style.stroke = "black";
    element.style.strokeWidth = "0.5px";

    element.addEventListener("mouseover" ,(e)=>{
      element.style.fill="black";
      location_name.textContent=element.id; 
    });

    element.addEventListener("mouseleave" ,(e)=>{
      element.style.fill="white";
      location_name.textContent="";
    });
    
    element.addEventListener("click" ,(e)=>{
      window.location.href=encodeURI("path/index.php?dis="+element.id);
    });
  });

  let path1 = document.querySelectorAll("g>g");
  
  path1.forEach((element)=>{
    element.style.fill="white";
    element.style.stroke = "black";
    element.style.strokeWidth = "0.5";

    element.addEventListener("mouseover" ,(e)=>{
        element.style.fill="black";

        location_name.textContent=element.id; 
        
        let ui = element.children;

        Array.from(ui).forEach((element)=>{
          element.style.fill="black";
        });

    });

    element.addEventListener("mouseleave" ,(e)=>{
      element.style.fill="white";
      location_name.textContent="";
        
      let ui = element.children;

      Array.from(ui).forEach((element)=>{
          element.style.fill="white";
        });
    });
    
    element.addEventListener("click" ,(e)=>{
      window.location.href=encodeURI("path/index.php?dis="+element.id);
    });

  });


  let paths= document.querySelectorAll("#world path");
  paths.forEach((element) => {
    element.style.fill="white";
    element.style.stroke = "black";
    element.style.strokeWidth = "3px";
    element.style.zindex=10;

  });
  
</script>
</body>
</html>