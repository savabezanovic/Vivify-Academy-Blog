<?php

    $sql = "SELECT posts.id, posts.title, posts.created_at, posts.body, users.First_Name, users.Last_Name
    FROM posts JOIN users ON posts.user_id = users.id ORDER BY created_at DESC LIMIT 5";

    $statement = $connection->prepare($sql);

    $statement->execute();

    $statement->setFetchMode(PDO::FETCH_ASSOC);

    $posts = $statement->fetchAll();
?>
<?php foreach($posts as $post){  ; ?>


    <div class="blog-post">
        <a href= "single-post.php?post_id=<?php echo($post['id']) ?>"><h2 class="blog-post-title"><?php echo ($post['title']); ?></h2></a>
        <p class="blog-post-meta"><?php echo (date_format (new DateTime($post['created_at']), "M/d/Y")); ?> by <a href="#"><?php echo $post['First_Name']." ". $post['Last_Name']; ?></a></p>

        <p><?php echo ($post['body']); ?></p>
    </div><!-- /.blog-post -->

<?php } ;?>