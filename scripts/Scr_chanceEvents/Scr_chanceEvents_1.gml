///This script is used for events of chance
var percent = argument[0]; // Between 0 - 1
percent = clamp(percent, 0, 1);
return (random(1) < percent);