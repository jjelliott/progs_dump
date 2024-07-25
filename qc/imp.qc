/*
==============================================================================

SOLDIER / PLAYER

==============================================================================
*/

$cd id1/models/enforcer
$origin 0 -6 24
$base base
$skin skin

$frame idle1 idle2 idle3 idle4 idle5 idle6 idle7 idle8 idle9 

$frame walk1 walk2 walk3 walk4 walk5 walk6 walk7 walk8 walk9 walk10 walk11 walk12 walk13 walk14 walk15 walk16 walk17 walk18

$frame paina1 paina2 paina3 paina4 paina5 paina6 
$frame painb1 painb2 painb3 painb4 painb5 painb6 painb7
$frame painc1 painc2 painc3 painc4 painc5 painc6 

$frame die1 die2 die3 die4 die5 die6 die7 
$frame run1 run2 run3 run4 run5 run6 run7 run8 run9
$frame atk1 atk2 atk3 atk4 atk5 

void() LaunchFireball =
{
	local vector vec = self.enemy.origin - self.origin - '0 0 16';
	local vector org = self.origin + v_forward * 30 + v_right * -12 + '0 0 16';
	local float projspeed = self.proj_speed_mod * 400;

	sound_attack (self, CHAN_WEAPON, "imp/fireball.wav", 1, ATTN_NORM);

	vec = normalize(vec);

	newmis = spawn();
	newmis.snd_hit = self.snd_hit; // dumptruck_ds
	newmis.owner = self;
	newmis.movetype = MOVETYPE_FLY;
	newmis.solid = SOLID_BBOX;
	newmis.effects = EF_DIMLIGHT;
	newmis.skin = self.skin_proj; //dumptruck_ds

	if (self.mdl_proj != "") // dumptruck_ds
	{
		setmodel (newmis, self.mdl_proj);
	}
	else
	{
		setmodel (newmis, "progs/impball.spr");

	}

	if (!newmis.skin_proj) // dumptruck_ds
	{
		newmis.skin = self.skin_proj;
	}
	else
	{
		newmis.skin = 0;
	}
	// setmodel (newmis, "progs/laser.mdl");
	setsize (newmis, '0 0 0', '0 0 0');

	setorigin (newmis, org);

	SetSpeed(newmis, vec, projspeed);
	newmis.angles = vectoangles(newmis.velocity);
	if (self.homing > 0)
	{
		SetupHoming(newmis, projspeed);
	}
	else
	{
		newmis.nextthink = time + 5;
		newmis.think = SUB_Remove;
	}
	newmis.touch = Laser_Touch;
};

//============================================================================

void()	imp_stand1	=[	$idle1,	imp_stand2	] {ai_stand();};
void()	imp_stand2	=[	$idle2,	imp_stand3	] {ai_stand();};
void()	imp_stand3	=[	$idle3,	imp_stand4	] {ai_stand();};
void()	imp_stand4	=[	$idle4,	imp_stand5	] {ai_stand();};
void()	imp_stand5	=[	$idle5,	imp_stand6	] {ai_stand();};
void()	imp_stand6	=[	$idle6,	imp_stand7	] {ai_stand();};
void()	imp_stand7	=[	$idle7,	imp_stand8	] {ai_stand();};
void()	imp_stand8	=[	$idle8,	imp_stand9	] {ai_stand();};
void()	imp_stand9	=[	$idle9,	imp_stand1	] {ai_stand();};

void()	imp_walk1	=[	$walk1 ,	imp_walk2	] {
if (random() < 0.2)
	sound_idle (self, CHAN_VOICE, "imp/idle.wav", 1, ATTN_IDLE); //dumptruck_ds
ai_walk(1);};
void()	imp_walk2	=[	$walk2 ,	imp_walk3	] {ai_walk(2);};
void()	imp_walk3	=[	$walk3 ,	imp_walk4	] {ai_walk(2);};
void()	imp_walk4	=[	$walk4,		imp_walk5	] {ai_walk(3);};
void()	imp_walk5	=[	$walk5,		imp_walk6	] {ai_walk(3);};
void()	imp_walk6	=[	$walk6,		imp_walk7	] {ai_walk(0);};
void()	imp_walk7	=[	$walk7,		imp_walk8	] {ai_walk(0);};
void()	imp_walk8	=[	$walk8,		imp_walk9	] {ai_walk(3);};
void()	imp_walk9	=[	$walk9,		imp_walk10	] {ai_walk(1);};
void()	imp_walk10	=[	$walk10,		imp_walk11	] {ai_walk(1);};
void()	imp_walk11	=[	$walk11,		imp_walk12	] {ai_walk(2);};
void()	imp_walk12	=[	$walk12,		imp_walk13	] {ai_walk(3);};
void()	imp_walk13	=[	$walk13,		imp_walk14	] {ai_walk(3);};
void()	imp_walk14	=[	$walk14,		imp_walk15	] {ai_walk(0);};
void()	imp_walk15	=[	$walk15,		imp_walk16	] {ai_walk(0);};
void()	imp_walk16	=[	$walk16,		imp_walk1	] {ai_walk(3);};

void()	imp_run1	=[	$run1 ,	imp_run2	] {
	if (random() < 0.2)
		sound_idle (self, CHAN_VOICE, "imp/idle.wav", 1, ATTN_IDLE); //dumptruck_ds
	ai_run(6);
};
	void()	imp_run2	=[	$run2 ,	imp_run3	] {ai_run(10); };
	void()	imp_run3	=[	$run3 ,	imp_run4	] {ai_run(6); };
	void()	imp_run4	=[	$run4 ,	imp_run5	] {ai_run(6);};
	void()	imp_run5	=[	$run5 ,	imp_run6	] {ai_run(6);};
	void()	imp_run6	=[	$run6 ,	imp_run7	] {ai_run(10);};
	void()	imp_run7	=[	$run7 ,	imp_run8	] {ai_run(6);}
	void()	imp_run8	=[	$run8 ,	imp_run1	] {ai_run(6);};
	void()	imp_run9	=[	$run9 ,	imp_run1	] {ai_run(0);};
void()	imp_atk1	=[	$atk1,	imp_atk2	] {ai_face();};
void()	imp_atk2	=[	$atk2,	imp_atk3	] {ai_face();};
void()	imp_atk3	=[	$atk3,	imp_atk4	] {ai_face();};
void()	imp_atk4	=[	$atk4,	imp_atk5	] {LaunchFireball();};
void()	imp_atk5	=[	$atk5,	imp_run1	] {ai_face();};


////////////////////////////
// new frames for turret mode START
////////////////////////////

// void()	imp_turret_atk1	=[	$attack1,	imp_turret_atk2	] {ai_face();};
// void()	imp_turret_atk2	=[	$attack2,	imp_turret_atk3	] {ai_face();};
// void()	imp_turret_atk3	=[	$attack3,	imp_turret_atk4	] {ai_face();self.attack_elevation = IterateElevation(OGRE_DEFAULT_ELEVATION, self.enemy.origin);};
// void()	imp_turret_atk4	=[	$attack4,	imp_turret_atk5	] {ai_face();self.attack_elevation = IterateElevation(self.attack_elevation, self.enemy.origin);};
// void()	imp_turret_atk5	=[	$attack5,	imp_turret_atk6	] {ai_face();self.attack_elevation = IterateElevation(self.attack_elevation, self.enemy.origin);};
// void()	imp_turret_atk6	=[	$attack6,	imp_turret_atk7	] {enforcer_fire();};
// void()	imp_turret_atk7	=[	$attack7,	imp_turret_atk8	] {ai_face();self.attack_elevation = IterateElevation(OGRE_DEFAULT_ELEVATION, self.enemy.origin);};
// void()	imp_turret_atk8	=[	$attack8,	imp_turret_atk9	] {ai_face();self.attack_elevation = IterateElevation(self.attack_elevation, self.enemy.origin);};
// void()	imp_turret_atk9	=[	$attack5,	imp_turret_atk10	] {ai_face();self.attack_elevation = IterateElevation(self.attack_elevation, self.enemy.origin);};
// void()	imp_turret_atk10	=[	$attack6,	imp_turret_atk11	] {enforcer_fire();};
// void()	imp_turret_atk11	=[	$attack7,	imp_turret_atk12	] {ai_face();};
// void()	imp_turret_atk12	=[	$attack8,	imp_turret_atk13	] {ai_face();};
// void()	imp_turret_atk13	=[	$attack9,	imp_turret_atk14	] {ai_face();};
// void()	imp_turret_atk14	=[	$attack10,	imp_seek_stand1	] {ai_face();SUB_CheckRefire (imp_turret_atk1);
// };
// void()	imp_seek_stand1	=[	$stand1,	imp_seek_stand2	] {ai_run(0);};
// void()	imp_seek_stand2	=[	$stand2,	imp_seek_stand3	] {ai_run(0);};
// void()	imp_seek_stand3	=[	$stand3,	imp_seek_stand4	] {ai_run(0);};
// void()	imp_seek_stand4	=[	$stand4,	imp_seek_stand5	] {ai_run(0);};
// void()	imp_seek_stand5	=[	$stand5,	imp_seek_stand6	] {ai_run(0);};
// void()	imp_seek_stand6	=[	$stand6,	imp_seek_stand7	] {ai_run(0);};
// void()	imp_seek_stand7	=[	$stand7,	imp_seek_stand1	] {ai_run(0);};

// void() imp_2turret_atk7;
// void()	imp_2turret_atk1	=[	$attack1,	imp_2turret_atk2	] {ai_face();self.count = 0;self.t_length= 4 + floor(random()*4);};
// void()	imp_2turret_atk2	=[	$attack2,	imp_2turret_atk3	] {ai_face();};
// void()	imp_2turret_atk3	=[	$attack3,	imp_2turret_atk4	] {ai_face();};
// void()	imp_2turret_atk4	=[	$attack4,	imp_2turret_atk5	] {ai_face();};
// void()	imp_2turret_atk5	=[	$attack5,	imp_2turret_atk6	] {ai_face();};

// void()	imp_2turret_atk6	={
// self.frame = $attack6;
// self.nextthink = time + .1;
// if (self.style == 5 && self.count < self.t_length)
// {
//   self.count +=1;
// }
// else
// {
//   self.think = imp_2turret_atk7;
// }
// ai_face();
// enforcer_fire();};
// void()	imp_2turret_atk7	=[	$attack7,	imp_2turret_atk8	] {ai_face();};
// void()	imp_2turret_atk8	=[	$attack8,	imp_2turret_atk9	] {ai_face();};
// void()	imp_2turret_atk9	=[	$attack9,	imp_2turret_atk10	] {ai_face();};
// void()	imp_2turret_atk10	=[	$attack10,	imp_2stand1	] {ai_face();SUB_CheckRefire (imp_2turret_atk1);
// };
// void()	imp_4turret_atk1	=[	$attack1,	imp_4turret_atk2	] {ai_face();};
// void()	imp_4turret_atk2	=[	$attack2,	imp_4turret_atk3	] {ai_face();};
// void()	imp_4turret_atk3	=[	$attack3,	imp_4turret_atk4	] {ai_face();};
// void()	imp_4turret_atk4	=[	$attack4,	imp_4turret_atk5	] {ai_face();};
// void()	imp_4turret_atk5	=[	$attack5,	imp_4turret_atk6	] {ai_face();};
// void()	imp_4turret_atk6	=[	$attack6,	imp_4turret_atk7	] {EnfLightning();};
// void()	imp_4turret_atk7	=[	$attack6,	imp_4turret_atk8	] {EnfLightning();};
// void()	imp_4turret_atk8	=[	$attack6,	imp_4turret_atk9	] {EnfLightning();};
// void()	imp_4turret_atk9	=[	$attack7,	imp_4turret_atk10	] {ai_face();};
// void()	imp_4turret_atk10	=[	$attack8,	imp_4turret_atk11	] {ai_face();};
// void()	imp_4turret_atk11	=[	$attack9,	imp_4turret_atk12	] {ai_face();};
// void()	imp_4turret_atk12	=[	$attack10,	imp_2stand1	] {ai_face();SUB_CheckRefire (imp_2turret_atk1);
// };
// void()	imp_2stand1	=[	$stand1,	imp_2stand2	] {ai_run(0);};
// void()	imp_2stand2	=[	$stand2,	imp_2stand3	] {ai_run(0);};
// void()	imp_2stand3	=[	$stand3,	imp_2stand4	] {ai_run(0);};
// void()	imp_2stand4	=[	$stand4,	imp_2stand5	] {ai_run(0);};
// void()	imp_2stand5	=[	$stand5,	imp_2stand6	] {ai_run(0);};
// void()	imp_2stand6	=[	$stand6,	imp_2stand7	] {ai_run(0);};
// void()	imp_2stand7	=[	$stand7,	imp_2stand1	] {ai_run(0);};
////////////////////////////
// new frames for turret mode END
////////////////////////////
void()	imp_paina1	=[	$paina1,	imp_paina2	] {};
void()	imp_paina2	=[	$paina2,	imp_paina3	] {};
void()	imp_paina3	=[	$paina3,	imp_paina4	] {};
void()	imp_paina4	=[	$paina4,	imp_paina5	] {};
void()	imp_paina5	=[	$paina5,	imp_paina6	] {};
void()	imp_paina6	=[	$paina6,	imp_run1	] {};
void()	imp_painb1	=[	$painb1,	imp_painb2	] {};
void()	imp_painb2	=[	$painb2,	imp_painb3	] {};
void()	imp_painb3	=[	$painb3,	imp_painb4	] {};
void()	imp_painb4	=[	$painb4,	imp_painb5	] {};
void()	imp_painb5	=[	$painb5,	imp_painb6	] {};
void()	imp_painb6	=[	$painb6,	imp_painb7	] {};
void()	imp_painb7	=[	$painb7,	imp_run1	] {};
void()	imp_painc1	=[	$painc1,	imp_painc2	] {};
void()	imp_painc2	=[	$painc2,	imp_painc3	] {};
void()	imp_painc3	=[	$painc3,	imp_painc4	] {};
void()	imp_painc4	=[	$painc4,	imp_painc5	] {};
void()	imp_painc5	=[	$painc5,	imp_painc6	] {};
void()	imp_painc6	=[	$painc6,	imp_run1	] {};
void(entity attacker, float damage) imp_pain = {
	if (self.pain_finished > time) return;
	self.pain_finished = time + 1;
	if (random() < 0.33)
	imp_paina1();
	else if (random() < .66)
	imp_painb1();
	else 
	imp_painc1();
};



void()	imp_die1	=[	$die1,	imp_die2	] {};
void()	imp_die2	=[	$die2,	imp_die3	] {};
void()	imp_die3	=[	$die3,	imp_die4	]
{
	self.solid = SOLID_NOT;
};
void()	imp_die4	=[	$die4,	imp_die5	] {ai_forward(14);};
void()	imp_die5	=[	$die5,	imp_die6	] {ai_forward(2);};
void()	imp_die6	=[	$die6,	imp_die7	] {};
void()	imp_die7	=[	$die7,	imp_die7	] {};

void() imp_die =
{
// check for gib
	if (self.health < -35)
	{
		sound (self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
			if (self.mdl_head != "") //dumptruck_ds custom_mdls
			{
				ThrowHead (self.mdl_head, self.health);
			}
			else
			{
				ThrowHead ("progs/h_mega.mdl", self.health);
			}
		// ThrowGib ("progs/gib1.mdl", self.health);
		// ThrowGib ("progs/gib2.mdl", self.health);
		// ThrowGib ("progs/gib3.mdl", self.health);
		if (self.mdl_gib1 != "") // custom models -- dumptruck_ds
		{
			ThrowGib (self.mdl_gib1, self.health);
		}
		else
		{
			ThrowGib ("progs/gib1.mdl", self.health);
		}
		if (self.mdl_gib2 != "")
		{
			ThrowGib (self.mdl_gib2, self.health);
		}
		else
		{
			ThrowGib ("progs/gib2.mdl", self.health);
		}
		if (self.mdl_gib3 != "")
		{
			ThrowGib (self.mdl_gib3, self.health);
		}
		else
		{
			ThrowGib ("progs/gib3.mdl", self.health);
		}
		DropStuff();
		return;
	}

// regular death
	if (random() > 0.5)
	sound_death (self, CHAN_VOICE, "imp/die1.wav", 1, ATTN_NORM); //dumptruck_ds
	else
	sound_death (self, CHAN_VOICE, "imp/die2.wav", 1, ATTN_NORM); //dumptruck_ds

	DropStuff();
		imp_die1 ();
};


/*QUAKED monster_enforcer (1 0 0) (-16 -16 -24) (16 16 40) AMBUSH X X TRIGGER_SPAWNED X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ("progs/enforcer.mdl");
}
Enforcer.

Default health = 80

keep_ammo(integer) : "1 = Don't drop backpack upon death"

style(Choices) : "Attack type"
0 : "Default (lasers)"
1	: "rockets"
2 : "grenades"
3 : "nails"

snd_death(string) : Path to custom death sound"
snd_pain(string) : "Path to 1st custom pain sound"
snd_sight(string) : "Path to custom sight sound for STOP!"
snd_attack(string) : Path to custom attack sound e.g laser firing"
snd_hit(string) : "Path to custom hit sound e.g. laser hits wall"
snd_idle(string) : "Path to custom idle sound"
snd_misc(string) : "Path to custom sight sound for FREEZE!"
snd_misc1(string) : "Path to custom sight sound for YOU THERE!"
snd_misc2(string) : "Path to custom sight sound for HALT!"
snd_misc3(string) : "Path to 2nd custom pain sound"

mdl_head(string) : "Path to custom head model"
mdl_body(string) : "Path to custom body model"
mdl_proj(string) : "Path to custom projectile model"
skin_head(float) : "Skin index of custom head model"
skin_proj(float) : "Skin index of custom projectile model"
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
obit_method(string) : "When used with obit_name, will set part of the text for a custom obituary. e.g. eviscerated - If empty, defaults to killed."
obit_name(string) : "When used with obit_method, this will set part of the text for a custom obituary. e.g. a Super Soldier! Using the examples here, the obituary would read: Player was eviscerated by a Super Solider!"
damage_mod(float) : "USE WITH CAUTION! Multiply all damage from this monster by this number (e.g. 4 = Quad damage)"

*/
void() monster_imp =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	if (deathmatch)
	{
		remove(self);
		return;
	}
	if (self.style >= 6)
		objerror("style key set too high\n");

	precache_body_model ("progs/imp-rerigged.mdl");  // custom_mdls function -- dumptruck_ds
	precache_head_model ("progs/h_mega.mdl");
	precache_proj_model ("progs/impball.spr");
 //dumptruck_ds
	precache_sound_death ("imp/die1.wav");
	precache_sound_attack ("imp/fireball.wav");
	precache_sound_hit ("enforcer/enfstop.wav");
	precache_sound_idle ("imp/idle.wav");
	precache_sound_pain ("enforcer/pain1.wav");
	precache_sound_misc3 ("enforcer/pain2.wav");
	precache_sound_sight ("imp/sight1.wav");
	precache_sound_misc ("imp/die2.wav"); // these will be replaced with custom noise fields eventually - dumptruck_ds
	precache_sound_misc1 ("imp/sight2.wav");
	precache_sound_misc2 ("enforcer/sight4.wav");

	precache_gib1 ("progs/gib1.mdl");
	precache_gib2 ("progs/gib2.mdl");
	precache_gib3 ("progs/gib3.mdl");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	body_model ("progs/imp-rerigged.mdl"); // SPIKE to the RESCUE!!!! - got this fixed. -- dumptruck_ds
	// // setmodel (self, "progs/enforcer.mdl"); //orginal dumptruck_ds

	setsize (self, '-16 -16 -24', '16 16 40');

	if (!self.proj_speed_mod)
	{
		self.proj_speed_mod = 1;
	}

	if (!self.health) //thanks RennyC -- dumptruck_ds
	self.health = 35;

	self.th_stand = imp_stand1;
	self.th_walk = imp_walk1;
	if (self.spawnflags & I_AM_TURRET)
	{
		objerror("turret not implemented for imp yet");
	// 	self.th_run = imp_2stand1;
	}
	// else
	// {
		self.th_run = imp_run1;
	// }
	if !(self.berserk) //Berserk test from http://celephais.net/board/view_thread.php?id=4&start=3465 -- dumptruck_ds
		self.th_pain = imp_pain;
	else
		self.th_pain = SUB_NullPain;
	self.th_die = imp_die;
	
			// if (self.spawnflags & I_AM_TURRET)
			// {
			// 	self.th_turret = imp_turret_atk1;
			// }
			self.th_missile = imp_atk1;
	walkmonster_start();
};
