<?php

require __DIR__.'/includes/init.php';

$videos_id = empty($_GET['videos_id'])? 0 : intval($_GET['videos_id']);



if($videos_id){
    $sql ="DELETE FROM Videos WHERE videos_id = $videos_id";
    $pdo->query($sql);
}
$come_from='videos.php';
if(isset($_SERVER['HTTP_REFERER'])){
    $come_from=$_SERVER['HTTP_REFERER'];
}

header("Location: $come_from");