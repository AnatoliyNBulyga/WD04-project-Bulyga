<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
<script>
	
	document.addEventListener('DOMContentLoaded', function(){ // Аналог $(document).ready(function(){
	  
	//ckEditor
    CKEDITOR.replace('ckEditor', {
        customConfig: '<?=HOST?>templates/assets/js/ckEditorConfig.js'
    });

    CKEDITOR.replace('ckEditor-2');
    CKEDITOR.replace('ckEditor-3');


	});

</script>