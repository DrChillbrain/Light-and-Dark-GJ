if(i > 8)
	i = 0;

if(array_equals(password, guess) && !guessed)
{
	god = true;
	guessed = true;
	audio_play_sound(sfx_heaven, 4, false);
}


