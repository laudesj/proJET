<!-- templates/list.php -->
<?php $title = 'Liste des articles' ?>

<?php ob_start() ?>
<h1 class="cover-heading">Liste des articles</h1>
    <ul class="list-group">
        <?php foreach ($posts as $post): ?>
        <li class="list-group-item bg-dark text-white">
            <a href="/show.php?id=<?= $post['id'] ?>">
                <?= $post['title'] ?>
            </a>
        </li>
        <?php endforeach ?>
    </ul>    
<?php $content = ob_get_clean() ?>

<?php include 'layout.php' ?>