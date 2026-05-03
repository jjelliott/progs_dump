

/*QUAKED monster_demon1 (1 0 0) (-32 -32 -24) (32 32 64) AMBUSH X X TRIGGER_SPAWNED X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ("progs/demon.mdl");
}
Fiend.

Default heath = 300"

snd_death(string) : "Path to custom death sound"
snd_pain(string) : ""Path to custom pain sound"
snd_sight(string) : "Path to custom sight sound"
snd_attack(string) : "Path to custom attack sound"
snd_hit(string) : "Path to custom hit sound (DEMON SLASHING)"
snd_idle(string) : "Path to custom idle sound"

mdl_head(string) : "Path to custom head model"
mdl_body(string) : "Path to custom body model"
skin_head(float) : "Skin index of custom head model"
mdl_gib1(string) : "Path to custom 1st gib model"

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
void() monster_demon1 =
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
  //dumptruck_ds custom_mdls
	precache_body_model ("progs/demon.mdl");
	precache_head_model ("progs/h_demon.mdl");

	precache_sound_death ("demon/ddeath.wav");
	precache_sound_hit ("demon/dhit2.wav");
	precache_sound_attack ("demon/djump.wav");
	precache_sound_pain ("demon/dpain1.wav");
	precache_sound_idle ("demon/idle1.wav");
	precache_sound_sight ("demon/sight2.wav");

  precache_gib1 ("progs/gib1.mdl");
  // precache_gib2 ("progs/gib2.mdl");
  // precache_gib3 ("progs/gib3.mdl");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	body_model ("progs/demon.mdl");
	// setmodel (self, "progs/demon.mdl");

	setsize (self, VEC_HULL2_MIN, VEC_HULL2_MAX);

  if (!self.health) //thanks RennyC -- dumptruck_ds
	self.health = 300;

	self.th_stand = demon1_stand1;
	self.th_walk = demon1_walk1;
	self.th_run = demon1_run1;
	self.th_die = demon_die;
	self.th_melee = Demon_MeleeAttack;		// one of two attacks
	self.th_missile = demon1_jump1;			// jump attack
  if !(self.berserk) //Berserk test from http://celephais.net/board/view_thread.php?id=4&start=3465 -- dumptruck_ds
    self.th_pain = demon1_pain;
  else
    self.th_pain = SUB_NullPain;

	walkmonster_start();
};


/*
==============================================================================

DEMON

==============================================================================
*/

/*
==============
CheckDemonMelee

Returns TRUE if a melee attack would hit right now
==============
*/
float()	CheckDemonMelee =
{
	if (enemy_range == RANGE_MELEE)
	{	// FIXME: check canreach
		self.attack_state = AS_MELEE;
		return TRUE;
	}
	return FALSE;
};

/*
==============
CheckDemonJump

==============
*/
float()	CheckDemonJump =
{
	local	vector	dist;
	local	float	d;

	if (self.origin_z + self.mins_z > self.enemy.origin_z + self.enemy.mins_z
	+ 0.75 * self.enemy.size_z)
		return FALSE;

	if (self.origin_z + self.maxs_z < self.enemy.origin_z + self.enemy.mins_z
	+ 0.25 * self.enemy.size_z)
		return FALSE;

	dist = self.enemy.origin - self.origin;
	dist_z = 0;

	d = vlen(dist);

	if (d < 100)
		return FALSE;

	if (d > 200)
	{
		if (random() < 0.9)
			return FALSE;
	}

	return TRUE;
};

float()	DemonCheckAttack =
{

// if close enough for slashing, go for it
	if (CheckDemonMelee ())
	{
		self.attack_state = AS_MELEE;
		return TRUE;
	}

	if (CheckDemonJump ())
	{
		self.attack_state = AS_MISSILE;
        sound_attack (self, CHAN_VOICE, "demon/djump.wav", 1, ATTN_NORM);
		return TRUE;
	}

	return FALSE;
};


//===========================================================================

void(float side)	Demon_Melee =
{
	local	float	ldmg;
	local vector	delta;

	ai_face ();
	walkmove (self.ideal_yaw, 12);	// allow a little closing

	delta = self.enemy.origin - self.origin;

	if (vlen(delta) > 100)
		return;
	if (!CanDamage (self.enemy, self))
		return;

    sound_hit (self, CHAN_WEAPON, "demon/dhit2.wav", 1, ATTN_NORM);
	ldmg = 10 + 5*random();
	T_Damage (self.enemy, self, self, ldmg);

	makevectors (self.angles);
	SpawnMeatSpray (self.origin + v_forward*16, side * v_right);
};


void()	Demon_JumpTouch =
{
	local	float	ldmg;

	if (self.health <= 0)
		return;

	if (other.takedamage)
	{
		if ( vlen(self.velocity) > 400 )
		{
      if !(self.worldtype)
        {
          ldmg = 40 + 10*random();
          T_Damage (other, self, self, ldmg);
          if (other.health > 0) // is the player still alive? Preach's instakill bug check - dumptruck_ds
          self.worldtype = 1;
        }
		}
	}

	if (!checkbottom(self))
	{
		if (self.flags & FL_ONGROUND)
		{	// jump randomly to not get hung up
//dprint ("popjump\n");
// 1998-09-16 Sliding/not-jumping on monsters/boxes/players fix by Maddes/Kryten  start
//			self.touch = SUB_Null;
	self.touch = monster_touch;
// 1998-09-16 Sliding/not-jumping on monsters/boxes/players fix by Maddes/Kryten  end
	self.think = demon1_jump1;
	self.nextthink = time + 0.1;

//			self.velocity_x = (random() - 0.5) * 600;
//			self.velocity_y = (random() - 0.5) * 600;
//			self.velocity_z = 200;
//			self.flags = self.flags - FL_ONGROUND;
		}
		return;	// not on ground yet
	}

  // 1998-09-16 Sliding/not-jumping on monsters/boxes/players fix by Maddes/Kryten  start
  //	self.touch = SUB_Null;
	self.touch = monster_touch;
  // 1998-09-16 Sliding/not-jumping on monsters/boxes/players fix by Maddes/Kryten  end
	self.think = demon1_jump11;
	self.nextthink = time + 0.1;
};

/* Scenic Dead Monster Patch stuff here from DeadStuff mod -- dumptruck_ds */

/*QUAKED monster_dead_demon (0 0.5 0.8) (-32 -32 -24) (32 32 64) SOLID X X X X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ({"path":"progs/demon.mdl","frame":53});
}
*/
void() monster_dead_demon =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	precache_model("progs/demon.mdl");
	setmodel(self, "progs/demon.mdl");
	self.frame = $death9;
        if (self.spawnflags & 1)
	{
		self.solid = SOLID_BBOX;
    setsize(self,'-43.63 -47.26 -50.53','32.48 24.65 30');
	}
	else
	{
		self.solid = SOLID_NOT;
	}
};
