/****************\
*  Aidan David	 *
*      Aidan     *
\****************/

var saveData = ds_map_create();

with (obj_PlayerStats) 
{
	saveData[? "room"] = previousRoom;
	saveData[? "x"] = playerXStart;
    saveData[? "y"] =  playerYStart;
}

var saveString = json_encode(saveData);
saveString = base64_encode(saveString);

ds_map_destroy(saveData);

var file = file_text_open_write(working_directory + "File");
file_text_write_string(file, saveString);
file_text_close(file);
