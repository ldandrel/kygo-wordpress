	<footer class="footer">
        <div class="footer__socials">
            <h2><?php pll_e('follow') ?> <?php the_field('artist_name', 'option'); ?></h2>
            <?php wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'socials'
            )); ?>
        </div>

        <div class="footer__privacy">
            <?php wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'privacy'
            )); ?>
        </div>
	</footer>




    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtDyN2Hj47tU58XCgzAgct_Elb5C78ne4&language=<?= pll_current_language(); ?>"></script>


    <?php wp_footer(); ?>




    </body>
</html>