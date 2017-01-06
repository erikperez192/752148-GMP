///script_collision();

// vertical collision
if place_meeting(x,y+vsp,parent_wall){
    while ( !place_meeting(x,y+1,parent_wall)) y+=1;
    vsp = 0;
    grounded = 1;
}
else{
    grounded = 0;
}

//Horizontal Colision
if place_meeting(x+hsp,y,parent_wall){
    while (!place_meeting(x+sign(hsp),y,parent_wall)) x+=sign(hsp);
    hsp = 0;
}

// commit movement
x += hsp;
y += vsp;
