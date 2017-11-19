	
	<footer class="footer">
        <div class="footer__socials">
            <h2>Follow Kygo</h2>
            <?php wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'socials'
            )); ?>
        </div>
	</footer>
    <script type="text/javascript">
        let page = '<?= get_queried_object()->post_title; ?>';
    </script>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtDyN2Hj47tU58XCgzAgct_Elb5C78ne4"
            async></script>


    <?php wp_footer(); ?>
	
	</body>
</html>