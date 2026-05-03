/*
==============================================================================

SOLDIER / PLAYER

==============================================================================
*/

/*
==============================================================================
SOLDIER CODE
==============================================================================
*/
void() genforcer_fire =
{
	local vector org;

	// self.effects = self.effects | EF_MUZZLEFLASH; //redundant -- dumptruck_ds
	makevectors (self.angles);

	org = self.origin + v_forward * 30 + v_right * 5 + '0 0 12';

	LaunchLaser(org, self.enemy.origin - self.origin);
};
/*
================
GruntFireGrenade
================
*/
void() GruntFireGrenade =
{
	local	entity missile;

	// self.effects = self.effects | EF_MUZZLEFLASH; //redundant -- dumptruck_ds

	sound_attack (self, CHAN_WEAPON, "weapons/grenade.wav", 1, ATTN_NORM);

	missile = spawn ();
	missile.owner = self;
	missile.movetype = MOVETYPE_BOUNCE;
	missile.solid = SOLID_BBOX;

// set missile speed

	makevectors (self.angles);

	missile.velocity = normalize(self.enemy.origin - self.origin);
	missile.velocity = missile.velocity * 600;
	missile.velocity_z = 200;

	missile.avelocity = '300 300 300';

	missile.angles = vectoangles(missile.velocity);

	missile.touch = OgreGrenadeTouch;

// set missile duration
	missile.nextthink = time + 2.5;
	missile.think = OgreGrenadeExplode;

	// setmodel (missile, "progs/grenade.mdl");
	if (self.mdl_proj != "") // dumptruck_ds
	{
			setmodel (missile, self.mdl_proj);
		}
		else
		{
			setmodel (missile, "progs/grenade.mdl");
	}

	if (!missile.skin_proj) // dumptruck_ds
	{
			missile.skin = self.skin_proj;
		}
		else
		{
			missile.skin = 0;
	}

	setsize (missile, '0 0 0', '0 0 0');
	setorigin (missile, self.origin); //dumptruck_ds
};

/*
================
MonFireSpike // used for Grunts
================
*/

void() MonFireSpike =
{
    local vector dir;
    // local entity old;

    sound_attack (self, CHAN_WEAPON, "weapons/rocket1i.wav", 1, ATTN_NORM);
	if (self.style == 5)
	self.attack_finished = time + 1.5;
	else
    self.attack_finished = time + 0.2;

    dir = normalize (self.enemy.origin - self.origin);
		makevectors (self.angles); //thanks Voidforce -- dumptruck_ds

    launch_spike (self.origin + v_forward * 30 + v_right * 5 + '0 0 12', dir);  //dumptruck_ds
    // launch_spike (self.origin + '0 0 16', dir);

    //newmis.touch = superspike_touch;
    // setmodel (newmis, "progs/s_spike.mdl");
		if (self.mdl_proj != "") // dumptruck_ds
		{
				setmodel (newmis, self.mdl_proj);
			}
			else
			{
				setmodel (newmis, "progs/s_spike.mdl");
		}

		if (!newmis.skin_proj) // dumptruck_ds
		{
				newmis.skin = self.skin_proj;
			}
			else
			{
				newmis.skin = 0;
		}
	// dumptruck_ds - end

    setsize (newmis, VEC_ORIGIN, VEC_ORIGIN);
};

void() army_fire;

void()	army_stand1	=[	get_frame(stand_start, 1),	army_stand2	] {ai_stand();};
void()	army_stand2	=[	get_frame(stand_start, 2),	army_stand3	] {ai_stand();};
void()	army_stand3	=[	get_frame(stand_start, 3),	army_stand4	] {ai_stand();};
void()	army_stand4	=[	get_frame(stand_start, 4),	army_stand5	] {ai_stand();};
void()	army_stand5	=[	get_frame(stand_start, 5),	army_stand6	] {ai_stand();};
void()	army_stand6	=[	get_frame(stand_start, 6),	army_stand7	] {ai_stand();};
void()	army_stand7	=[	get_frame(stand_start, 7),	army_stand8	] {ai_stand();};
void()	army_stand8	=[	get_frame(stand_start, 8),	army_stand1	] {ai_stand();};

void()	army_walk1	=[	get_frame(walk_start, 1),	army_walk2	] {
if (random() < 0.2)
	sound_idle (self, CHAN_VOICE, "soldier/idle.wav", 1, ATTN_IDLE);
ai_walk(1);};
void()	army_walk2	=[	get_frame(walk_start, 2),	army_walk3	] {ai_walk(1);};
void()	army_walk3	=[	get_frame(walk_start, 3),	army_walk4	] {ai_walk(1);};
void()	army_walk4	=[	get_frame(walk_start, 4),	army_walk5	] {ai_walk(1);};
void()	army_walk5	=[	get_frame(walk_start, 5),	army_walk6	] {ai_walk(2);};
void()	army_walk6	=[	get_frame(walk_start, 6),	army_walk7	] {ai_walk(3);};
void()	army_walk7	=[	get_frame(walk_start, 7),	army_walk8	] {ai_walk(4);};
void()	army_walk8	=[	get_frame(walk_start, 8),	army_walk9	] {ai_walk(4);};
void()	army_walk9	=[	get_frame(walk_start, 9),	army_walk10	] {ai_walk(2);};
void()	army_walk10	=[	get_frame(walk_start, 10),	army_walk11	] {ai_walk(2);};
void()	army_walk11	=[	get_frame(walk_start, 11),	army_walk12	] {ai_walk(2);};
void()	army_walk12	=[	get_frame(walk_start, 12),	army_walk13	] {ai_walk(1);};
void()	army_walk13	=[	get_frame(walk_start, 13),	army_walk14	] {ai_walk(0);};
void()	army_walk14	=[	get_frame(walk_start, 14),	army_walk15	] {ai_walk(1);};
void()	army_walk15	=[	get_frame(walk_start, 15),	army_walk16	] {ai_walk(1);};
void()	army_walk16	=[	get_frame(walk_start, 16),	army_walk17	] {ai_walk(1);};
void()	army_walk17	=[	get_frame(walk_start, 17),	army_walk18	] {ai_walk(3);};
void()	army_walk18	=[	get_frame(walk_start, 18),	army_walk19	] {ai_walk(3);};
void()	army_walk19	=[	get_frame(walk_start, 19),	army_walk20	] {ai_walk(3);};
void()	army_walk20	=[	get_frame(walk_start, 20),	army_walk21	] {ai_walk(3);};
void()	army_walk21	=[	get_frame(walk_start, 21),	army_walk22	] {ai_walk(2);};
void()	army_walk22	=[	get_frame(walk_start, 22),	army_walk23	] {ai_walk(1);};
void()	army_walk23	=[	get_frame(walk_start, 23),	army_walk24	] {ai_walk(1);};
void()	army_walk24	=[	get_frame(walk_start, 24),	army_walk1	] {ai_walk(1);};

void()	army_run1	=[	get_frame(run_start, 1),		army_run2	] {
if (random() < 0.2)
	sound_idle (self, CHAN_VOICE, "soldier/idle.wav", 1, ATTN_IDLE);
ai_run(11);};
void()	army_run2	=[	get_frame(run_start, 2),		army_run3	] {ai_run(15);};
void()	army_run3	=[	get_frame(run_start, 3),		army_run4	] {ai_run(10);};
void()	army_run4	=[	get_frame(run_start, 4),		army_run5	] {ai_run(10);};
void()	army_run5	=[	get_frame(run_start, 5),		army_run6	] {ai_run(8);};
void()	army_run6	=[	get_frame(run_start, 6),		army_run7	] {ai_run(15);};
void()	army_run7	=[	get_frame(run_start, 7),		army_run8	] {ai_run(10);};
void()	army_run8	=[	get_frame(run_start, 8),		army_run1	] {ai_run(8);};


void() army_atk6;
void()	army_atk1	=[	get_frame(range_start, 1),	army_atk2	] {ai_face();self.count = 0;self.t_length= 4 + floor(random()*4);};
void()	army_atk2	=[	get_frame(range_start, 2),	army_atk3	] {ai_face();};
void()	army_atk3	=[	get_frame(range_start, 3),	army_atk4	] {ai_face();};
void()	army_atk4	=[	get_frame(range_start, 4),	army_atk5	] {ai_face();};
void()	army_atk5	={
self.frame = get_frame(range_start, 5);
self.nextthink = time + .1;
if (self.style == 5 && self.count < self.t_length)
{
  self.count +=1;
}
else
{
  self.think = army_atk6;
}
ai_face();
army_fire();
self.effects = self.effects | EF_MUZZLEFLASH;};
void()	army_atk6	=[	get_frame(range_start, 6),	army_atk7	] {ai_face();};
void()	army_atk7	=[	get_frame(range_start, 7),	army_atk8	] {ai_face();SUB_CheckRefire (army_atk1);};
void()	army_atk8	=[	get_frame(range_start, 8),	army_atk9	] {ai_face();};
void()	army_atk9	=[	get_frame(range_start, 9),	self.th_run	] {ai_face();};
// new frames for turrets
void() army_turret_atk6;
void()	army_turret_atk1	=[	get_frame(range_start, 1),	army_turret_atk2	] {ai_face();self.count = 0;self.t_length= 4 + floor(random()*4);};
void()	army_turret_atk2	=[	get_frame(range_start, 2),	army_turret_atk3	] {ai_face();self.attack_elevation = IterateElevation(OGRE_DEFAULT_ELEVATION, self.enemy.origin);};
void()	army_turret_atk3	=[	get_frame(range_start, 3),	army_turret_atk4	] {ai_face();self.attack_elevation = IterateElevation(self.attack_elevation, self.enemy.origin);};
void()	army_turret_atk4	=[	get_frame(range_start, 4),	army_turret_atk5	] {ai_face();self.attack_elevation = IterateElevation(self.attack_elevation, self.enemy.origin);};
void()	army_turret_atk5	={
self.frame = get_frame(range_start, 5);
self.nextthink = time + .1;
if (self.style == 5 && self.count < self.t_length)
{
  self.count +=1;
}
else
{
  self.think = army_turret_atk6;
}
ai_face();
army_fire();
self.effects = self.effects | EF_MUZZLEFLASH;};
void()	army_turret_atk6	=[	get_frame(range_start, 6),	army_turret_atk7	] {ai_face();};
void()	army_turret_atk7	=[	get_frame(range_start, 7),	army_turret_atk8	] {ai_face();SUB_CheckRefire (army_turret_atk1);};
void()	army_turret_atk8	=[	get_frame(range_start, 8),	army_turret_atk9	] {ai_face();};
void()	army_turret_atk9	=[	get_frame(stand_start, 4),	army_turret_atk10	] {ai_face();};
void()	army_turret_atk10	=[	get_frame(stand_start, 5),	army_seeking_stand1	] {ai_face();};
void()	army_seeking_stand1	=[	get_frame(stand_start, 1),	army_seeking_stand2	] {ai_run(0);};
void()	army_seeking_stand2	=[	get_frame(stand_start, 2),	army_seeking_stand3	] {ai_run(0);};
void()	army_seeking_stand3	=[	get_frame(stand_start, 3),	army_seeking_stand4	] {ai_run(0);};
void()	army_seeking_stand4	=[	get_frame(stand_start, 4),	army_seeking_stand5	] {ai_run(0);};
void()	army_seeking_stand5	=[	get_frame(stand_start, 5),	army_seeking_stand6	] {ai_run(0);};
void()	army_seeking_stand6	=[	get_frame(stand_start, 6),	army_seeking_stand7	] {ai_run(0);};
void()	army_seeking_stand7	=[	get_frame(stand_start, 7),	army_seeking_stand8	] {ai_run(0);};
void()	army_seeking_stand8	=[	get_frame(stand_start, 8),	army_seeking_stand1	] {ai_run(0);};
// new frames for turrets end

void()	army_pain1	=[	get_frame(pain1_start, 1),		army_pain2	] {};
void()	army_pain2	=[	get_frame(pain1_start, 2),		army_pain3	] {};
void()	army_pain3	=[	get_frame(pain1_start, 3),		army_pain4	] {};
void()	army_pain4	=[	get_frame(pain1_start, 4),		army_pain5	] {};
void()	army_pain5	=[	get_frame(pain1_start, 5),		army_pain6	] {};
void()	army_pain6	=[	get_frame(pain1_start, 6),		self.th_run	] {ai_pain(1);};

void()	army_painb1	=[	get_frame(pain2_start, 1),	army_painb2	] {};
void()	army_painb2	=[	get_frame(pain2_start, 2),	army_painb3	] {ai_painforward(13);};
void()	army_painb3	=[	get_frame(pain2_start, 3),	army_painb4	] {ai_painforward(9);};
void()	army_painb4	=[	get_frame(pain2_start, 4),	army_painb5	] {};
void()	army_painb5	=[	get_frame(pain2_start, 5),	army_painb6	] {};
void()	army_painb6	=[	get_frame(pain2_start, 6),	army_painb7	] {};
void()	army_painb7	=[	get_frame(pain2_start, 7),	army_painb8	] {};
void()	army_painb8	=[	get_frame(pain2_start, 8),	army_painb9	] {};
void()	army_painb9	=[	get_frame(pain2_start, 9),	army_painb10] {};
void()	army_painb10=[	get_frame(pain2_start, 10),	army_painb11] {};
void()	army_painb11=[	get_frame(pain2_start, 11),	army_painb12] {};
void()	army_painb12=[	get_frame(pain2_start, 12),	army_painb13] {ai_pain(2);};
void()	army_painb13=[	get_frame(pain2_start, 13),	army_painb14] {};
void()	army_painb14=[	get_frame(pain2_start, 14),	self.th_run	] {};

void()	army_painc1	=[	get_frame(pain3_start, 1),	army_painc2	] {};
void()	army_painc2	=[	get_frame(pain3_start, 2),	army_painc3	] {ai_pain(1);};
void()	army_painc3	=[	get_frame(pain3_start, 3),	army_painc4	] {};
void()	army_painc4	=[	get_frame(pain3_start, 4),	army_painc5	] {};
void()	army_painc5	=[	get_frame(pain3_start, 5),	army_painc6	] {ai_painforward(1);};
void()	army_painc6	=[	get_frame(pain3_start, 6),	army_painc7	] {ai_painforward(1);};
void()	army_painc7	=[	get_frame(pain3_start, 7),	army_painc8	] {};
void()	army_painc8	=[	get_frame(pain3_start, 8),	army_painc9	] {ai_pain(1);};
void()	army_painc9	=[	get_frame(pain3_start, 9),	army_painc10] {ai_painforward(4);};
void()	army_painc10=[	get_frame(pain3_start, 10),	army_painc11] {ai_painforward(3);};
void()	army_painc11=[	get_frame(pain3_start, 11),	army_painc12] {ai_painforward(6);};
void()	army_painc12=[	get_frame(pain3_start, 12),	army_painc13] {ai_painforward(8);};
void()	army_painc13=[	get_frame(pain3_start, 13),	self.th_run] {};

void(entity attacker, float damage)	army_pain =
{
	local float r;

	if (self.pain_finished > time)
		return;

	r = random();

	if (r < 0.2)
	{  // turret checks moved here to play pain sounds correctly - dumptruck_ds
		self.pain_finished = time + 0.6;
		sound_pain (self, CHAN_VOICE, "soldier/pain1.wav", 1, ATTN_NORM);
		if (self.spawnflags & I_AM_TURRET)
			return;
		else
		army_pain1 ();
	}
	else if (r < 0.6)
	{
		self.pain_finished = time + 1.1;
		sound_misc (self, CHAN_VOICE, "soldier/pain2.wav", 1, ATTN_NORM);
		if (self.spawnflags & I_AM_TURRET)
			return;
		else
		army_painb1 ();
	}
	else
	{
		self.pain_finished = time + 1.1;
		sound_misc (self, CHAN_VOICE, "soldier/pain2.wav", 1, ATTN_NORM);
		if (self.spawnflags & I_AM_TURRET)
			return;
		else
		army_painc1 ();
	}
};

void() army_fire =
{ //dumptruck_ds start rocket grunt stuff

if (self.style == 1)

	{
		ai_face();

		W_GruntRocket();
	}

else if (self.style == 2)

	{
		ai_face();
		if (self.spawnflags & I_AM_TURRET)
			{
				PreachFireGrenade(self.attack_elevation);
			}
		else
		GruntFireGrenade();
	}

else if (self.style == 3)

	{
		ai_face();
		genforcer_fire();
	}

else if (self.style == 4 || self.style == 5)

	{
		ai_face();
		MonFireSpike();
	}

else

	{
		local	vector	dir;
		local	entity	en;

		ai_face();

		sound_attack (self, CHAN_WEAPON, "soldier/sattck1.wav", 1, ATTN_NORM);

		// fire somewhat behind the player, so a dodging player is harder to hit
		en = self.enemy;

		dir = en.origin - en.velocity*0.2;
		dir = normalize (dir - self.origin);

		FireBullets (4, dir, '0.1 0.1 0');
	}

};

void()	army_die1	=[	get_frame(die1_start, 1),	army_die2	] {};
void()	army_die2	=[	get_frame(die1_start, 2),	army_die3	] {};
void()	army_die3	=[	get_frame(die1_start, 3),	army_die4	]
{self.solid = SOLID_NOT;
// style ammotype check -- dumptruck_ds
	if (self.style == 1)
	{
		self.ammo_rockets = 2;
	}
	if (self.style == 2)
	{
		self.ammo_rockets = 2;
	}
	if (self.style == 3)
	{
		self.ammo_cells = 5;
	}
	if (self.style == 4 || self.style == 5)
	{
		self.ammo_nails = 5;
	}
	else if (self.style == 0)
	{
		self.ammo_shells = 5;
	}
if(!self.keep_ammo)DropBackpack();};
void()	army_die4	=[	get_frame(die1_start, 4),	army_die5	] {};
void()	army_die5	=[	get_frame(die1_start, 5),	army_die6	] {};
void()	army_die6	=[	get_frame(die1_start, 6),	army_die7	] {};
void()	army_die7	=[	get_frame(die1_start, 7),	army_die8	] {};
void()	army_die8	=[	get_frame(die1_start, 8),	army_die9	] {};
void()	army_die9	=[	get_frame(die1_start, 9),	army_die10	] {};
void()	army_die10	=[	get_frame(die1_start, 10),	army_die10	] {};

void()	army_cdie1	=[	get_frame(die2_start, 1),	army_cdie2	] {};
void()	army_cdie2	=[	get_frame(die2_start, 2),	army_cdie3	] {ai_back(5);};
void()	army_cdie3	=[	get_frame(die2_start, 3),	army_cdie4	]
{self.solid = SOLID_NOT;
// style ammotype check -- dumptruck_ds
	if (self.style == 1)
	{
		self.ammo_rockets = 2;
	}
	if (self.style == 2)
	{
		self.ammo_rockets = 2;
	}
	if (self.style == 3)
	{
		self.ammo_cells = 5;
	}
	if (self.style == 4 || self.style == 5)
	{
		self.ammo_nails = 5;
	}
	else if (self.style == 0)
	{
		self.ammo_shells = 5;
	}
if(!self.keep_ammo)DropBackpack();ai_back(4);}; //dumptruck_ds
void()	army_cdie4	=[	get_frame(die2_start, 4),	army_cdie5	] {ai_back(13);};
void()	army_cdie5	=[	get_frame(die2_start, 5),	army_cdie6	] {ai_back(3);};
void()	army_cdie6	=[	get_frame(die2_start, 6),	army_cdie7	] {ai_back(4);};
void()	army_cdie7	=[	get_frame(die2_start, 7),	army_cdie8	] {};
void()	army_cdie8	=[	get_frame(die2_start, 8),	army_cdie9	] {};
void()	army_cdie9	=[	get_frame(die2_start, 9),	army_cdie10	] {};
void()	army_cdie10	=[	get_frame(die2_start, 10),	army_cdie11	] {};
void()	army_cdie11	=[	get_frame(die2_start, 11),	army_cdie11	] {};


void() army_die =
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
			ThrowHead ("progs/h_guard.mdl", self.health);
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
	sound_death (self, CHAN_VOICE, "soldier/death1.wav", 1, ATTN_NORM);
	DropStuff();
	if (random() < 0.5)
		army_die1 ();
	else
		army_cdie1 ();
};


