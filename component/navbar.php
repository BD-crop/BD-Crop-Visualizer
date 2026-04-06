<?php
    function navfile_navigator($path){
        return "<div class=\"navbar\">
    <a href=\"$path/index.php.\" class=\"icon-holder\">
        <img src=\"$path/Bangladesh.png\" alt=\"Product logo\">
        <p>BD Crop</p>
    </a>
    <a href=\"$path/advanced_search.php\">
    <h3>Advanced Search</h3>
    </a>
    <form action=\"$path/search.php\" method=\"POST\" id=\"navbar_form\"> 
        <select name=\"selection_type\" id=\"selectElement\">
            <option value=\"district\">District</option>
            <option value=\"crop name\">Crop Name</option>
        </select>
        <input type=\"text\" id=\"search_field\" name=\"search_text\" placeholder=\"Search district\">
        <button type=\"submit\" name=\"submission\">Submit</button>
    </form>
</div>

<script>
    selectElement.addEventListener('change', function() {
        search_field.placeholder=\"Search \"+this.value;
    });
</script>
"  ;
    }

?>


