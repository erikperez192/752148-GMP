///attack_state()

sprite_index = spr_player_sword_attack;

//=====Hitbox
hit = 0

if(image_index >= 1) && (image_index <= 3)
    {
        with(instance_create(x,y,obj_hit_box))
        {
            image_xscale = other.image_xscale;
            with (instance_place(x,y,obj_crawler1))
            {
                if(hit == 0)
                {
                    hit = 1;
                    hp = -1
                    vsp = -3
                    hsp = sign(x - other.x)*4;
                }
            }
        }
    }
    

