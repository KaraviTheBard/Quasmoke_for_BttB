//get a lower hp when the enemy has been hit
if (image_index == 0)
{
	image_index = 1
} else if image_index == 1 
{
	image_index = 2
} else if image_index == 2
{
	image_index = 3
	global.EnemyDead = true //when the hp reaches this sprite(0hp) it dies
	show_debug_message("Enemy has been slain");
}