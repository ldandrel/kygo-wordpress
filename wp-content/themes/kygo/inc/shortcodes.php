<?php
function add_button_shortcode( $atts ) {
    $a = shortcode_atts( array(
        'title'       => '',
        'link'        => '',
        'align'       => '',
    ), $atts );
    ob_start(); ?>

    <div class="article-btn" style="text-align: '<?= $a['align']; ?>';">
        <a href="<?= $a['link'] ?>" class="btn-kygo"><?= $a['title'] ?></a>
    </div>

    <?php
    return ob_get_clean();
}
add_shortcode( 'button', 'add_button_shortcode' );