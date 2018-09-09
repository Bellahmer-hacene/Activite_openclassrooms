<?php
session_start();
setcookie('pseudo', $_POST['pseudo'], time() + 365*24*3600, null, null, false, true);

// insère le message puis redirige vers minichat.php
header('Location: minichat.php');

// Connexion à la base de données
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=store;charset=utf8', 'root', '');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

// Insertion du message à l'aide d'une requête préparée
$req = $bdd->prepare('INSERT INTO minichat (pseudo, message, date_message) VALUES(?, ?, NOW())');
$req->execute(array($_POST['pseudo'], $_POST['message']));

// Redirection du visiteur vers la page du minichat
header('Location: minichat.php');
?>

