<?php

    function hTagFormatter($text, $classes = "") {
        return preg_replace('/<h([0-9])>/i', '<h$1 class="' . $classes . '">', $text);
    }

    function pTagFormatter($text, $classes = "") {
        return preg_replace('/<p>/i', '<p class="' . $classes . '">', $text);
    }

    function preTagFormatter($text, $classes = "") {
        return preg_replace('/<pre>/i', '<pre class="' . $classes . '">', $text);
    }

/* path: ~app/helpers/parsedownHelper.php */
