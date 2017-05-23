/// The images get more and more transparent every tick
if (image_alpha > 0)
{
	image_alpha -= .1;
}
else
{
	instance_destroy();
}