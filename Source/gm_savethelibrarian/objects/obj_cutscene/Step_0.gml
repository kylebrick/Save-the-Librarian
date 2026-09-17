/// @desc Update Queue

if(queue_ind >= array_length(queue)) {instance_destroy(); exit;}

if(!action_init) {
	action_cur = queue[queue_ind];
	action_cur.start();
	action_init = true;
}

if(action_cur.is_finished) {queue_ind++; action_init = false;}