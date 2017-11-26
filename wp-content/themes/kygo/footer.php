	<footer class="footer">
        <div class="footer__socials">
            <h2>Follow Kygo</h2>
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




    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtDyN2Hj47tU58XCgzAgct_Elb5C78ne4"></script>


    <?php wp_footer(); ?>




    </body>
</html>