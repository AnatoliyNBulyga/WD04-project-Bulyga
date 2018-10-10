<?php 
		foreach ($success as $item) {
			if ( count($item) == 1) {  ?>
				<!-- Однострочная ошибка -->
				<div class="notify notify--success mb-20"><?=$item['title']?></div>
	<?php		} else if ( count($item) == 2 ) { ?>
				<!-- Ошибка с описанием -->
				<div class="notify no-paddings">
					<div class="notify no-radius-bottom notify--success"><?=$item['title']?></div>
					<div class="notify no-radius-top">
						<?=$item['desc']?>
						
					</div>
				</div>
	<?php
					}
			}
?>