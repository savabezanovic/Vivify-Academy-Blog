<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include("db.php"); ?>

<header>
    <div class="blog-masthead">
        <div class="container">
            <nav class="nav">
                <a class="nav-link active" href="index.php">Home</a>
                <a class="nav-link" href="create.php">Create</a>
            </nav>
        </div>
    </div>

    <div class="blog-header">
        <div class="container">
            <h1 class="blog-title">The Bootstrap Blog</h1>
            <p class="lead blog-description">An example blog template built with Bootstrap.</p>
        </div>
    </div>
</header>