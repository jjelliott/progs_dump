
void takedamage_use() {
    local float disable_only = 0;
    self.nextthink = 0;
    dprint("takedamage use\n");
    if (self.style == 1) {
        local entity targ2 = find(world, targetname, self.target2);
        while (targ2 != world){
            if (targ2.health > 0) disable_only = 1;
            targ2 = find(targ2, targetname, self.target2);
        }
    } 

    local entity targ = find(world, targetname, self.target);
    while (targ != world){
        if (targ.takedamage != DAMAGE_NO || disable_only){
            targ.takedamage = DAMAGE_NO;
        } else {
            targ.takedamage = DAMAGE_AIM;
        }
        targ = find(targ, targetname, self.target);    
    }
}

void trigger_takedamage(){
    if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
        return;

    
    self.use = takedamage_use;
}