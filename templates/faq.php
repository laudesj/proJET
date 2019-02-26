<!-- templates/show.php -->
<?php $title = 'FAQ' ?>

<?php ob_start() ?>
    
    <p class="lead">
    FAQ --  Lorem, ipsum dolor sit amet consectetur adipisicing elit. Delectus magnam quod rerum eaque exercitationem aliquid tempore quaerat sint in quas quidem similique incidunt, suscipit culpa ex ut eveniet modi repellat!
    </p>

<?php $content = ob_get_clean() ?>

<?php include 'layout.php' ?>