<?php

 



class PDO_ {

    private static $init = null;
    public $pdo;

    public static function initializer() {
        if (self::$init !== null) {
            return self::$init;
        }
        self::$init = new PDO_();
        return self::$init;
    }

    private function __construct() {
        $this->pdo = new PDO("mysql:host=localhost;port=3306;charset=utf8mb4", 'root', '');
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $this->pdo->exec("CREATE DATABASE IF NOT EXISTS bd_crop CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci");
        $this->pdo = new PDO("mysql:host=localhost;port=3306;dbname=bd_crop;charset=utf8mb4", 'root', '');
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        try{
            $this->pdo->exec(file_get_contents("./database/bd_crop.sql"));

        }catch(Exception $e){
        }


    }

    public function insert_district(string $name , string $description , string $imagePath){
        $sql ="Insert into district(District_name , description , imagePath) values(?,?,?)";

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$name , $description , $imagePath]);
    }

    public function get_district(string $name){
        $sql ="select * from district where District_name=?";

       
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$name]); 
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }








    


}