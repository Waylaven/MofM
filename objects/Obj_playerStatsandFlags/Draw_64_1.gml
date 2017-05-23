/// Draw the stats
draw_set_color(c_white);

//Show hp while alive
if (hp > 0)
{
draw_text(32, 32, "HP: " + string(hp) + "/" + string(maxHp));
draw_text(32, 64, "STAMINA: " + string(stamina) + "/" + string(maxStamina));
}
else
{
draw_text(64, 64, "YOU HAVE DIED");
}
//TODO: Play Dark Souls music here