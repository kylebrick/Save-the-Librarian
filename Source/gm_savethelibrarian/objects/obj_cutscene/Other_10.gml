/// @desc Update to Scene Array Size
 
current_scene = scene_info[scene];

var len = array_length(current_scene) - 1; //don't include first entry of scene array

current_scene_array = -1; //reset variable before it stores new array
current_scene_array = array_create(len,0);
array_copy(current_scene_array, 0, current_scene, 1, len);