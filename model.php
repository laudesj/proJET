<?php

$bdd = 'simpleblog';
$user = 'simpleblog';
$password = 'simpleblog';

// model.php
function open_database_connection()
{
    // global $bdd, $user, $password;
    // $connection = new PDO("mysql:host=localhost;dbname=$bdd", $user, $password);

    $url = parse_url(getenv("CLEARDB_DATABASE_URL"));
    $server = $url["host"];
    $username = $url["user"];
    $password = $url["pass"];
    $db = substr($url["path"], 1);

    $conn = new PDO("mysql:host=$server;dbname=$db", $username, $password); //new mysqli($server, $username, $password, $db);

    return $conn;
}

function close_database_connection(&$connection)
{
    $connection = null;
}

function get_all_posts()
{
    // global $bdd, $user, $password;
    // $connection = new PDO("mysql:host=localhost;dbname=$bdd", $user, $password);
    $connection = open_database_connection();

    $result = $connection->query('SELECT id, title FROM posts');

    $posts = [];
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        $posts[] = $row;
    }
    close_database_connection($connection);

    return $posts;
}

function get_post_by_id($id)
{
    // global $bdd, $user, $password;
    // $connection = new PDO("mysql:host=localhost;dbname=$bdd", $user, $password);
    $connection = open_database_connection();

    $query = 'SELECT created_at, title, body FROM posts WHERE id=:id';
    $statement = $connection->prepare($query);
    $statement->bindValue(':id', $id, PDO::PARAM_INT);
    $statement->execute();

    $row = $statement->fetch(PDO::FETCH_ASSOC);

    close_database_connection($connection);

    return $row;
}