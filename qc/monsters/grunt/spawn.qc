/*QUAKED monster_army (1 0 0) (-16 -16 -24) (16 16 40) AMBUSH X X TRIGGER_SPAWNED X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ("progs/soldier.mdl");
}
Grunt.

Default health = 30"

keep_ammo "1 = Don't drop backpack upon death"
snd_death "Path to custom death sound"
snd_pain "Path to custom pain sound"
snd_sight "Path to custom sight sound"
snd_attack "Path to custom attack sound (GUNSHOT)"
snd_idle "Path to custom idle sound"
snd_misc "Path to custom sound (PAIN 2)"

mdl_head(string) : "Path to custom head model"
mdl_body(string) : "Path to custom body model"
skin_head(float) : "Skin index of custom head model"
mdl_gib1(string) : "Path to custom 1st gib model"
mdl_gib2(string) : "Path to custom 2nd gib model"
mdl_gib3(string) : "Path to custom 3rd gib model"

style "Attack type"
0 "Default (shotgun)"
1 "Rockets"
2 "Grenades"
3 "lasers"
4 "Nails"

effects(choices) : "Add a visual effect to an entity"
0 : "None (Default)"
1 : "Brightfield (yellow particles)"
4 : "Bright light"
8 : "Dim light"

berserk(choices) "Skips certain pain animations similar to skill 3 (Makes a semi-nightmare monster!)"
0 : "Off (Default)"
1 : "Berserk (skip pain animations)"

delay(float) : "Delay spawn in for this amount of time"

wait(choices) : "Play an effect when trigger spawned?"
0 : "Teleport Effects (Default)"
1 : "Spawn Silently"

spawn_angry(Choices)
0 : "Only when trigger spawned, default behavior - not angry"
1 : "Only when trigger spawned, set to 1 to spawn angry at player"

infight_mode(Choices)
0 : "Default behavior, only with different classnames"
1 : "Infight with monsters with the same classname but a different mdl_body"
2 : "Infight with monsters with the same classname and model but a different skin"
3 : "Infight no matter what"

health(integer) : "Set this to a custom health amount"
pain_target(string) : "Fire this target when pain_threshold is reached"
pain_threshold(integer) : "Fire pain_target when health drops below this amount"
sight_trigger(integer) : "1 = Fire target upon seeing the player instead of death"
skin(integer) : "Skin index (default 0) Use this when your custom model has more than one skin to select"
obit_name(string) : "When used with obit_method, this will set part of the text for a custom obituary. e.g. a Super Soldier! Using the examples here, the obituary would read: Player was eviscerated by a Super Solider!"
obit_method(string) : "When used with obit_name, will set part of the text for a custom obituary. e.g. eviscerated - If empty, defaults to killed."
damage_mod(float) : "USE WITH CAUTION! Multiply all damage from this monster by this number (e.g. 4 = Quad damage)"

*/
void() monster_army =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	if (deathmatch)
	{
		remove(self);
		return;
	}
	//dumptruck_ds custom_mdls
	precache_body_model ("progs/soldier.mdl");
	precache_head_model ("progs/h_guard.mdl");
	precache_proj_model ("progs/missile.mdl"); // used if style == 1
	precache_proj_model ("progs/grenade.mdl"); // used if style == 2
	precache_model2 ("progs/laser.mdl"); // used if style == 3
	//dumptruck_ds custom_mdls
	precache_model ("progs/gib1.mdl");
	precache_model ("progs/gib2.mdl");
	precache_model ("progs/gib3.mdl");

	precache_sound_death ("soldier/death1.wav");
	precache_sound_idle ("soldier/idle.wav");
	precache_sound_pain ("soldier/pain1.wav");
	precache_sound_misc ("soldier/pain2.wav");
	precache_sound_attack ("soldier/sattck1.wav");
	precache_sound_sight ("soldier/sight1.wav");
	precache_sound2 ("enforcer/enfire.wav"); // used if style == 3
	precache_sound2 ("enforcer/enfstop.wav"); // used if style == 3

	precache_sound ("player/udeath.wav");		// gib death

	precache_gib1 ("progs/gib1.mdl");
	precache_gib2 ("progs/gib2.mdl");
	precache_gib3 ("progs/gib3.mdl");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	//dumptruck_ds custom_mdls
	body_model ("progs/soldier.mdl");

	setsize (self, '-16 -16 -24', '16 16 40');

	if (!self.proj_speed_mod)
	{
		self.proj_speed_mod = 1;
	}

	if (!self.health) //thanks RennyC -- dumptruck_ds
	self.health = 30;

	self.th_stand = army_stand1;
	self.th_walk = army_walk1;
	if (self.spawnflags & I_AM_TURRET)
	{
	  self.th_run = army_seeking_stand1;
	}
	else
	{
		self.th_run = army_run1;
	}
    if (!self.th_missile){
	    self.th_missile = army_atk1;
    }
	self.th_turret = army_turret_atk1;
	if !(self.berserk) //Berserk test from http://celephais.net/board/view_thread.php?id=4&start=3465 -- dumptruck_ds
	self.th_pain = army_pain;
	else
	self.th_pain = SUB_NullPain;
	self.th_die = army_die;
    
    // self.stand_start = 0; // doesn't need if gated - 0 is default.
    if (!self.pain1_start){
        self.pain1_start = 40;
    }
    if (!self.pain2_start){
        self.pain2_start = 46;
    }
    if (!self.pain3_start){
        self.pain3_start = 60;
    }
    if(!self.run_start){
        self.run_start = 73;
    }
    if(!self.range_start){
        self.range_start = 81;
    }

    if(!self.walk_start){
        self.walk_start = 90;
    }
	walkmonster_start ();
};

/* Scenic Dead Monster Patch stuff here from DeadStuff mod -- dumptruck_ds */

/*QUAKED monster_dead_army (0 0.5 0.8) (-16 -16 -24) (16 16 32) SOLID FACE_UP X X X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ({"path":"progs/soldier.mdl","frame":28});
}
*/
void() monster_dead_army =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	precache_model("progs/soldier.mdl");
	setmodel(self, "progs/soldier.mdl");
	if (self.spawnflags & 2)
	{
		self.frame = $death10;

		if (self.spawnflags & 1)
		{
			self.solid = SOLID_BBOX;
                	setsize(self,'-38.27 -30.47 -50.3','22.1 25.35 30');
		}
		else
		{
			self.solid = SOLID_NOT;
		}
	}
	else
	{
		self.frame = $deathc11;
		if (self.spawnflags & 1)
		{
			self.solid = SOLID_BBOX;
                	setsize(self,'-39.85 -29.35 -49.07','20.52 33.17 30');
		}
		else
		{
			self.solid = SOLID_NOT;
		}
	}
};
