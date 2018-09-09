<?php
session_start();

?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Mini-chat</title>
    </head>
    <style>
        form
        {
            text-align:center;
        }
    </style>
    <body>
    
    <form action="minichat_post.php" method="post">
        <p>

            <label for="pseudo">Pseudo</label> : <input type="text" name="pseudo" id="pseudo" value= "<?php
  
                  if(isset($_COOKIE['pseudo']))
                  {
                    echo htmlspecialchars($_COOKIE['pseudo']);
                  }
                    
                  ?>"><br>

            <label for="message">Message</label> :  <input type="text" name="message" id="message"><br />
            
            
            <input type="submit" value="Envoyer" />
            <a href="minichat.php"><input type="button" name="boutonrafraichir" value="Rafraichir" /></a>

        </p>
    </form>

    <?php
    // Connexion à la base de données
    try
    {
        $bdd = new PDO('mysql:host=localhost;dbname=store;charset=utf8', 'root', '');
    }
    catch(Exception $e)
    {
            die('Erreur : '.$e->getMessage());
    }

    // Récupération des 10 derniers messages
    $reponse = $bdd->query('SELECT pseudo, message, DATE_FORMAT(date_message, \'%d/%m/%Y %Hh%imin%ss\') AS date_message FROM minichat ORDER BY ID DESC LIMIT 0, 10');

    // Affichage de chaque message (toutes les données sont protégées par htmlspecialchars)
    while ($donnees = $reponse->fetch())
    {
        echo '<p>' . htmlspecialchars($donnees['date_message']) . ' : <strong>' . htmlspecialchars($donnees['pseudo']) . '</strong> : ' . htmlspecialchars($donnees['message']) . '</p>';
    }

    $reponse->closeCursor();
    ?>
    </body>
</html>