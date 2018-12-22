randomAudio = irandom_range(0,2)
playThis = noone
switch (randomAudio)
{
case 0:
playThis = argument0
break;
case 1:
playThis = argument1
break;
case 2:
playThis = argument2
break;
}
audio_play_sound(playThis, 1, false);
