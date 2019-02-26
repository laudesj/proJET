<?php

// controllers.php
function list_action()
{
    $route = 'list';
    $posts = get_all_posts();
    require 'templates/list.php';
}

function show_action($id)
{
    $route = 'show';
    $post = get_post_by_id($id);
    require 'templates/show.php';
}

function faq_action()
{
    $route = 'faq';
    require 'templates/faq.php';
}