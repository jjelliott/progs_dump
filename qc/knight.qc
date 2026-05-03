

/*QUAKED monster_knight (1 0 0) (-16 -16 -24) (16 16 40) AMBUSH X X TRIGGER_SPAWNED X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ("progs/knight.mdl");
}
Knight.

Default heath = 75"

snd_death(string) : "Path to custom death sound"
snd_pain(string) : "Path to custom pain sound"
snd_sight(string) : "Path to custom sight sound"
snd_attack(string) : "Path to custom attack sound (SWORD SLASH 1)"
snd_idle(string) : "Path to custom idle sound"
snd_misc(string) : "Path to custom sound (SWORD SLASH 2)"

mdl_head(string) : "Path to custom head model"
mdl_body(string) : "Path to custom body model"
skin_head(float) : "Skin index of custom head model"
mdl_gib1(string) : "Path to custom 1st gib model"
mdl_gib2(string) : "Path to custom 2nd gib model"
mdl_gib3(string) : "Path to custom 3rd gib model"

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
void() monster_knight =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	if (self.spawnflags & I_AM_TURRET)
		objerror("Incompatible spawnflag: TURRET_MODE\n");

	if (deathmatch)
	{
		remove(self);
		return;
	}
	// dumptruck_ds custom_mdls
	precache_body_model ("progs/knight.mdl");
	precache_head_model ("progs/h_knight.mdl");
	//// dumptruck_ds
	precache_sound_death ("knight/kdeath.wav");
	precache_sound_pain ("knight/khurt.wav");
	precache_sound_sight ("knight/ksight.wav");
	precache_sound_attack ("knight/sword1.wav");
	precache_sound_misc ("knight/sword2.wav");
	precache_sound_idle ("knight/idle.wav");

	precache_gib1 ("progs/gib1.mdl");
	precache_gib2 ("progs/gib2.mdl");
	precache_gib3 ("progs/gib3.mdl");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	body_model ("progs/knight.mdl"); // dumptruck_ds custom_mdls
	// setmodel (self, "progs/knight.mdl");

	setsize (self, '-16 -16 -24', '16 16 40');

	if (!self.health) //thanks RennyC -- dumptruck_ds
	self.health = 75;

	self.th_stand = knight_stand1;
	self.th_walk = knight_walk1;
	self.th_run = knight_run1;
	self.th_melee = knight_atk1;
	if !(self.berserk) //Berserk test from http://celephais.net/board/view_thread.php?id=4&start=3465 -- dumptruck_ds
	self.th_pain = knight_pain;
	else
	self.th_pain = SUB_NullPain;
	self.th_die = knight_die;

	walkmonster_start ();
};

/* Scenic Dead Monster Patch stuff here from DeadStuff mod -- dumptruck_ds */

/*QUAKED monster_dead_knight (0 0.5 0.8) (-16 -16 -24) (16 16 32) SOLID ON_SIDE X X X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ({"path":"progs/knight.mdl","frame":96});
}
*/
void() monster_dead_knight =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	precache_model("progs/knight.mdl");
	setmodel(self, "progs/knight.mdl");
	if (self.spawnflags & 2)
	{
		self.frame = $death10;

		if (self.spawnflags & 1)
		{
			self.solid = SOLID_BBOX;
                	setsize(self,'-25.56 -14.56 -50.49','26.45 40.2 30');
		}
		else
		{
			self.solid = SOLID_NOT;
		}
	}
	else
	{
		self.frame = $deathb11;
		if (self.spawnflags & 1)
		{
			self.solid = SOLID_BBOX;
                	setsize(self,'-30.36 -45.6 -50.18','28.29 11.59 30');
		}
		else
		{
			self.solid = SOLID_NOT;
		}
	}
};
