/// @desc
if(room_change){
	audio_stop_all();
	if(room == training) audio_play_sound(ost_classic,1,true);
	if(room == lvl1)audio_play_sound(ost_accept,1,true);
	if(room == lvl2)audio_play_sound(ost_sabaton,1,true);
	if(room == lvlend)audio_play_sound(ost_think,1,true);
	room_change = false;
}