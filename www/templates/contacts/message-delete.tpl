<div class="content">
	<div class="container user-content section-page">
		<div class="row">
				
			<form class="col-md-10 offset-md-1" method="POST" action="<?= HOST ?>contacts/message-delete?id=<?=$message['id']?>" >

				<h1>Удалить сообщение</h1>

				<div class="user-message">

					<div class="user-message__header">

					<?php if ($message->name != '') { ?>
						<div class="user-message__name"><?= $message->name ?></div>					
					<?php } ?>

                    <a class="user-message__link" href="mailto:<?= $message->email ?>" target="_blank"><?= $message->email ?></a>

                </div>
							
	            <?php if ($message->message != '') { ?>	
	                <div class="user-message__text">
		                <p>
		                <?= $message->message ?>
		                </p>
	                </div>
	            <?php  } ?>

	            <?php if ($message->message_file != '') { ?>
	                <div class="user-message__bottom">
		                <div class="user-message__attachments">Прикрепленный файл: </div>
		                <a class="user-message__attachments-name" href="<?=HOST?>usercontent/upload_files/<?=$message->message_file?>" target="_blank"><?= $message->message_file_name_original ?></a>
	                </div>
	            <?php } ?>

            </div>
						
		    <input type="submit" value="Удалить" class="button button--remove mt-15 mr-20" name='messageDelete'>

            <a href="<?=HOST?>messages" class="button mt-15">Отмена</a>

            </form>
        </div>
    </div>
</div>