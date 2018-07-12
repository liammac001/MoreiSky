/****************\
*  Aidan David	 *
*      Aidan     *
\****************/

if file_exists("File")
{
var file = file_text_open_read(working_directory + "File");
var saveString = file_text_read_string(file);
file_text_close(file);
saveString = base64_decode(saveString);
var saveData = json_decode(saveString);

var saveRoom = saveData[? "room"];
if (room != saveRoom) {
    room_goto(saveRoom);
}

with (obj_PlayerStats) 
{
	playerXStart = saveData[? "x"];
    playerYStart = saveData[? "y"];
}

if (instance_exists(obj_Player)) {
    obj_Player.x = playerXStart;
    obj_Player.y = playerYStart;
} else {
    instance_create_depth(obj_PlayerStats.playerXStart, obj_PlayerStats.playerYStart, 0 , obj_Player);
}

ds_map_destroy(saveData);
}