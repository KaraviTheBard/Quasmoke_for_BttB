//player getting hit removes their hp
if (image_index == 0)
{
	image_index = 1
} else if image_index == 1 
{
	image_index = 2
}else if image_index == 2 
{
	image_index = 3
}else if image_index == 3 
{
	image_index = 4
} else if image_index == 4
{
	image_index = 5
	global.playerDead = true //player reaches 0hp at this frame and dies
}