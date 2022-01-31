if(true)
{
	currentLevel = levelNumber;
	audio_play_sound(sfx_button, 2, false);
	switch(levelNumber)
	{
		case 0: 
			room_goto(Level0_rm);
			break;
		case 1: 
			room_goto(Level1_rm);
			break;
		case 2: 
			room_goto(Level2_rm);
			break;
		case 3: 
			room_goto(Level3_rm);
			break;
		case 4: 
			room_goto(Level4_rm);
			break;
		case 5: 
			room_goto(Level5_rm);
			break;
		case 6: 
			room_goto(Level6_rm);
			break;
		case 7: 
			room_goto(Level7_rm);
			break;
		case 8: 
			room_goto(Level8_rm);
			break;
		case 9: 
			room_goto(Level9_rm);
			break;
	}
}