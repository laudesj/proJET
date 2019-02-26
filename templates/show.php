<!-- templates/show.php -->
<?php $title = $post['title'] ?>

<?php ob_start() ?>
    
    <div class="card">
        <div class="card-body bg-dark text-white">
            <h5 class="card-title"><?= $post['title'] ?></h5>
            <h6 class="card-subtitle mb-2 text-muted"posté le <?= $post['created_at'] ?></h6>
            <p class="card-text"><?= $post['body'] ?></p>
            <a href="/index.php" class="card-link">Retour</a>
        </div>
    </div>

<?php $content = ob_get_clean() ?>

<?php include 'layout.php' ?>