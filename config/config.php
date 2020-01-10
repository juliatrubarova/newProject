<?php 
    

    $link = new mysqli('localhost', 'root', '', 'myshop');
    $link -> set_charset('utf8');

    if (!$link) {
        echo 'Не удалось подключиться к Базе данных';
    }
    

?>