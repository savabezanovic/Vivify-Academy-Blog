<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include("db.php");

if(!empty($_POST['First_Name']) && !empty($_POST['Last_Name']) && !empty($_POST['title']) && !empty($_POST['body']) ){
    $First_Name = $_POST['First_Name'];
    $Last_Name = $_POST['Last_Name'];
    $title = $_POST['title'];
    $body = $_POST['body'];
} else{
    header("Location: http://localhost:8080/create.php?required=false");
    exit;
}

$sqlUsers = "SELECT users.id, users.First_Name, users.Last_Name
FROM users WHERE users.First_Name = '{$First_Name}' AND users.Last_Name = '{$Last_Name}'";

$statementUsers = $connection->prepare($sqlUsers);

$statementUsers->execute();

$users = $statementUsers->fetchAll(\PDO::FETCH_ASSOC);

if (!empty($users)) {
    $user = $users[0];
}

if(empty($user)){
    $sqlUser = "INSERT INTO users (First_Name, Last_Name) VALUES ('{$First_Name}', '{$Last_Name}');";

    $statementUsers = $connection->prepare($sqlUser);

    $statementUsers->execute();

    $sqlUsers = "SELECT users.id, users.First_Name, users.Last_Name
    FROM users WHERE users.First_Name = '{$First_Name}' AND users.Last_Name = '{$Last_Name}'";

    $statementUsers = $connection->prepare($sqlUsers);

    $statementUsers->execute();

    $users = $statementUsers->fetchAll(\PDO::FETCH_ASSOC);

    if (!empty($users)) {
        $user = $users[0];
    }
}

$date = date('Y-m-d H:i:s');

$userId = $user['id'];

$sqlCreate = "INSERT INTO posts (title, body, created_at, user_id) VALUES ('{$title}', '{$body}', '{$date}', {$userId});";

$statementCreate = $connection->prepare($sqlCreate);

$statementCreate->execute();
    
header("Location: http://localhost:8080/index.php");
    
?>