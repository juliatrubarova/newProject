<?php 
    include_once($_SERVER['DOCUMENT_ROOT'] . '/config/config.php');

    $result = $link 
                -> query('SELECT * FROM `itemsmen`');
    // print_r($result);

    $products = [];
    // создать ассоциатвный массив php
    while($row = $result -> fetch_assoc()) {
        $products[] = $row;
    }

    echo json_encode($products);
    // JSON - javascript object notation
    // [{}, {}, {}]
    
?>