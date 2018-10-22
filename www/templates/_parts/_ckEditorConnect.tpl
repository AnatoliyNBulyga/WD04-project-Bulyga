<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
<script>
	
	document.addEventListener('DOMContentLoaded', function(){ // Аналог $(document).ready(function(){
	  
	//ckEditor
    CKEDITOR.replace('ckEditor', {
        customConfig: '<?=HOST?>templates/assets/js/ckEditorConfig.js'
    });

	});

</script>