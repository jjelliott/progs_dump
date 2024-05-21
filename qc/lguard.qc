/*
==============================================================================

SOLDIER / PLAYER

==============================================================================
*/

$cd id1/models/soldier3
$origin 0 -6 24
$base base
$skin skin

//anim name: attak1, number of frames: 12
$frame attak101 attak102 attak103 attak104 attak105 attak106 attak107 attak108 attak109 attak110 attak111 attak112
//anim name: attak2, number of frames: 18
$frame attak201 attak202 attak203 attak204 attak205 attak206 attak207 attak208 attak209 attak210 attak211 attak212 attak213 attak214 attak215 attak216 attak217 attak218
//anim name: attak3, number of frames: 9
$frame attak301 attak302 attak303 attak304 attak305 attak306 attak307 attak308 attak309
//anim name: attak4, number of frames: 6
$frame attak401 attak402 attak403 attak404 attak405 attak406
//anim name: duck, number of frames: 5
$frame duck01 duck02 duck03 duck04 duck05
//anim name: pain1, number of frames: 5
$frame pain101 pain102 pain103 pain104 pain105
//anim name: pain2, number of frames: 7
$frame pain201 pain202 pain203 pain204 pain205 pain206 pain207
//anim name: pain3, number of frames: 18
$frame pain301 pain302 pain303 pain304 pain305 pain306 pain307 pain308 pain309 pain310 pain311 pain312 pain313 pain314 pain315 pain316 pain317 pain318
//anim name: pain4, number of frames: 17
$frame pain401 pain402 pain403 pain404 pain405 pain406 pain407 pain408 pain409 pain410 pain411 pain412 pain413 pain414 pain415 pain416 pain417
//anim name: run, number of frames: 12
$frame run01 run02 run03 run04 run05 run06 run07 run08 run09 run10 run11 run12
//anim name: stand1, number of frames: 30
$frame stand101 stand102 stand103 stand104 stand105 stand106 stand107 stand108 stand109 stand110 stand111 stand112 stand113 stand114 stand115 stand116 stand117 stand118 stand119 stand120 stand121 stand122 stand123 stand124 stand125 stand126 stand127 stand128 stand129 stand130
//anim name: walk2, number of frames: 24
$frame walk201 walk202 walk203 walk204 walk205 walk206 walk207 walk208 walk209 walk210 walk211 walk212 walk213 walk214 walk215 walk216 walk217 walk218 walk219 walk220 walk221 walk222 walk223 walk224
//anim name: death2, number of frames: 35
$frame death201 death202 death203 death204 death205 death206 death207 death208 death209 death210 death211 death212 death213 death214 death215 death216 death217 death218 death219 death220 death221 death222 death223 death224 death225 death226 death227 death228 death229 death230 death231 death232 death233 death234 death235
//anim name: death5, number of frames: 24
$frame death501 death502 death503 death504 death505 death506 death507 death508 death509 death510 death511 death512 death513 death514 death515 death516 death517 death518 death519 death520 death521 death522 death523 death524
//anim name: death6, number of frames: 10
$frame death601 death602 death603 death604 death605 death606 death607 death608 death609 death610
/*
==============================================================================
SOLDIER CODE
==============================================================================
*/
void() GuardFireBlaster =
{
	local vector org;

	// self.effects = self.effects | EF_MUZZLEFLASH; //redundant -- dumptruck_ds
	makevectors (self.angles);

	org = self.origin + v_forward * 30 + v_right * 6 + '0 0 12';

	LaunchLaser(org, self.enemy.origin - self.origin);
};
/*
================
GruntFireGrenade
================
*/
void() GuardFireGrenade =
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

void() GuardFireSpike =
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

    launch_spike (self.origin + v_forward * 30 + v_right * 6 + '0 0 12', dir);  //dumptruck_ds
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


void() lguard_fire;

void()	lguard_stand1	=[	$stand101,	lguard_stand2	] {ai_stand(); };
void()	lguard_stand2	=[	$stand102,	lguard_stand3	] {ai_stand();};
void()	lguard_stand3	=[	$stand103,	lguard_stand4	] {ai_stand();};
void()	lguard_stand4	=[	$stand104,	lguard_stand5	] {ai_stand();};
void()	lguard_stand5	=[	$stand105,	lguard_stand6	] {ai_stand();};
void()	lguard_stand6	=[	$stand106,	lguard_stand7	] {ai_stand();};
void()	lguard_stand7	=[	$stand107,	lguard_stand8	] {ai_stand();};
void()	lguard_stand8	=[	$stand108,	lguard_stand9	] {ai_stand();};
void()	lguard_stand9	=[	$stand109,	lguard_stand10	] {ai_stand();};
void()	lguard_stand10	=[	$stand110,	lguard_stand11	] {ai_stand();};
void()	lguard_stand11	=[	$stand111,	lguard_stand12	] {ai_stand();};
void()	lguard_stand12	=[	$stand112,	lguard_stand13	] {ai_stand();};
void()	lguard_stand13	=[	$stand113,	lguard_stand14	] {ai_stand();};
void()	lguard_stand14	=[	$stand114,	lguard_stand15	] {ai_stand();};
void()	lguard_stand15	=[	$stand115,	lguard_stand16	] {ai_stand();};
void()	lguard_stand16	=[	$stand116,	lguard_stand17	] {ai_stand();};
void()	lguard_stand17	=[	$stand117,	lguard_stand18	] {ai_stand();};
void()	lguard_stand18	=[	$stand118,	lguard_stand19	] {ai_stand();};
void()	lguard_stand19	=[	$stand119,	lguard_stand20	] {ai_stand();};
void()	lguard_stand20	=[	$stand120,	lguard_stand21	] {ai_stand();};
void()	lguard_stand21	=[	$stand121,	lguard_stand22	] {ai_stand();};
void()	lguard_stand22	=[	$stand122,	lguard_stand23	] {ai_stand();};
void()	lguard_stand23	=[	$stand123,	lguard_stand24	] {ai_stand();};
void()	lguard_stand24	=[	$stand124,	lguard_stand25	] {ai_stand();};
void()	lguard_stand25	=[	$stand125,	lguard_stand26	] {ai_stand();};
void()	lguard_stand26	=[	$stand126,	lguard_stand27	] {ai_stand();};
void()	lguard_stand27	=[	$stand127,	lguard_stand28	] {ai_stand();};
void()	lguard_stand28	=[	$stand128,	lguard_stand29	] {ai_stand();};
void()	lguard_stand29	=[	$stand129,	lguard_stand30	] {ai_stand();};
void()	lguard_stand30	=[	$stand130,	lguard_stand1	] {ai_stand(); };

void()	lguard_walk1	=[	$walk201,	lguard_walk2	] {
if (random() < 0.2)
	sound_idle (self, CHAN_VOICE, "lguard/solidle1.wav", 1, ATTN_IDLE);
														   ai_walk(3);};
void()	lguard_walk2	=[	$walk202,	lguard_walk3	] {ai_walk(3);};
void()	lguard_walk3	=[	$walk203,	lguard_walk4	] {ai_walk(3);};
void()	lguard_walk4	=[	$walk204,	lguard_walk5	] {ai_walk(3);};
void()	lguard_walk5	=[	$walk205,	lguard_walk6	] {ai_walk(3);};
void()	lguard_walk6	=[	$walk206,	lguard_walk7	] {ai_walk(3);};
void()	lguard_walk7	=[	$walk207,	lguard_walk8	] {ai_walk(3);};
void()	lguard_walk8	=[	$walk208,	lguard_walk9	] {ai_walk(3);};
void()	lguard_walk9	=[	$walk209,	lguard_walk10	] {ai_walk(4);};
void()	lguard_walk10	=[	$walk210,	lguard_walk11	] {ai_walk(4);
	if (random() < 0.2)
	sound_idle (self, CHAN_VOICE, "lguard/solidle1.wav", 1, ATTN_IDLE);};
void()	lguard_walk11	=[	$walk211,	lguard_walk12	] {ai_walk(9);};
void()	lguard_walk12	=[	$walk212,	lguard_walk13	] {ai_walk(8);};
void()	lguard_walk13	=[	$walk213,	lguard_walk14	] {ai_walk(5);};
void()	lguard_walk14	=[	$walk214,	lguard_walk15	] {ai_walk(1);};
void()	lguard_walk15	=[	$walk215,	lguard_walk16	] {ai_walk(2);};
void()	lguard_walk16	=[	$walk216,	lguard_walk17	] {ai_walk(7);};
void()	lguard_walk17	=[	$walk217,	lguard_walk18	] {ai_walk(6);};
void()	lguard_walk18	=[	$walk218,	lguard_walk9	] {ai_walk(7);};
void()	lguard_walk19	=[	$walk219,	lguard_walk20	] {ai_walk(3);};
void()	lguard_walk20	=[	$walk220,	lguard_walk21	] {ai_walk(3);};
void()	lguard_walk21	=[	$walk221,	lguard_walk22	] {ai_walk(3);};
void()	lguard_walk22	=[	$walk222,	lguard_walk23	] {ai_walk(3);};
void()	lguard_walk23	=[	$walk223,	lguard_walk24	] {ai_walk(3);};
void()	lguard_walk24	=[	$walk224,	lguard_walk1	] {ai_walk(3);};

void()	lguard_run1	=[	$run01,		lguard_run2	] {
if (random() < 0.2)
	sound_idle (self, CHAN_VOICE, "lguard/solidle1.wav", 1, ATTN_IDLE);
ai_run(7);};
void()	lguard_run2	=[	$run02,		lguard_run3	] {ai_run(5);};
void()	lguard_run3	=[	$run03,		lguard_run4	] {ai_run(10);};
void()	lguard_run4	=[	$run04,		lguard_run5	] {ai_run(11);};
void()	lguard_run5	=[	$run05,		lguard_run6	] {ai_run(11);};
void()	lguard_run6	=[	$run06,		lguard_run7	] {ai_run(16);};
void()	lguard_run7	=[	$run07,		lguard_run8	] {ai_run(10);};
void()	lguard_run8	=[	$run08,		lguard_run3	] {ai_run(15);};


void() lguard_atk6;
void()	lguard_atk1	=[	$attak101,	lguard_atk2	] {ai_face();self.count = 0;self.t_length= 4 + floor(random()*7);};
void()	lguard_atk2	=[	$attak102,	lguard_atk3	] {ai_face();};
void()	lguard_atk3	={
	self.frame = $attak103;
	self.nextthink = time + .1;
	if (self.style == 5 && self.count < self.t_length)
	{
	  self.count +=1;
	}
	else
	{
	  self.think = lguard_atk4;
	}
	ai_face();
	lguard_fire();
	self.effects = self.effects | EF_MUZZLEFLASH;};
void()	lguard_atk4	=[	$attak104,	lguard_atk5	] {ai_face();};
void()	lguard_atk5	=[	$attak105,	lguard_atk6	] {ai_face();};
void()	lguard_atk6	=[	$attak106,	lguard_atk7	] {ai_face();};
void()	lguard_atk7	=[	$attak107,	lguard_atk8	] {ai_face();SUB_CheckRefire (lguard_atk1);};
void()	lguard_atk8	=[	$attak108,	lguard_atk9	] {ai_face();};
void()	lguard_atk9	=[	$attak109,	lguard_atk10	] {ai_face();};
void() lguard_atk10 = [$attak110, lguard_atk11] {ai_face();};
void() lguard_atk11 = [$attak111, lguard_atk12] {ai_face();};
void() lguard_atk12 = [$attak112, lguard_run1] {ai_face();};
void() lguard_atk2_6;
void()	lguard_atk2_1	=[	$attak201,	lguard_atk2_2	] {ai_face();self.count = 0;self.t_length= 4 + floor(random()*4);};
void()	lguard_atk2_2	=[	$attak202,	lguard_atk2_3	] {ai_face();};
void()	lguard_atk2_3	=[	$attak203,	lguard_atk2_4	] {ai_face();};
void()	lguard_atk2_4	=[	$attak204,	lguard_atk2_5	] {ai_face();};
void()	lguard_atk2_5	={
	self.frame = $attak205;
	self.nextthink = time + .1;
	if (self.style == 5 && self.count < self.t_length)
	{
	  self.count +=1;
	}
	else
	{
	  self.think = lguard_atk2_6;
	}
	ai_face();
	lguard_fire();
	self.effects = self.effects | EF_MUZZLEFLASH;};
void()	lguard_atk2_6	=[	$attak206,	lguard_atk2_7	] {ai_face();};
void()	lguard_atk2_7	=[	$attak207,	lguard_atk2_8	] {ai_face();SUB_CheckRefire (lguard_atk1);};
void()	lguard_atk2_8	=[	$attak208,	lguard_atk2_9	] {ai_face();};
void()	lguard_atk2_9	=[	$attak209,	lguard_atk2_10	] {ai_face();};
void() lguard_atk2_10 = [$attak210, lguard_atk2_11] {ai_face();};
void() lguard_atk2_11 = [$attak211, lguard_atk2_12] {ai_face();};
void() lguard_atk2_12 = [$attak212, lguard_atk2_13] {ai_face();};
void() lguard_atk2_13 = [$attak213, lguard_atk2_14] {ai_face();};
void() lguard_atk2_14 = [$attak214, lguard_atk2_15] {ai_face();};
void() lguard_atk2_15 = [$attak215, lguard_atk2_16] {ai_face();};
void() lguard_atk2_16 = [$attak216, lguard_atk2_17] {ai_face();};
void() lguard_atk2_17 = [$attak217, lguard_atk2_18] {ai_face();};
void() lguard_atk2_18 = [$attak218, lguard_run1] {ai_face();};
// new frames for turrets
void() lguard_turret_atk6;
void()	lguard_turret_atk1	=[	$attak101,	lguard_turret_atk2	] {ai_face();self.count = 0;self.t_length= 4 + floor(random()*4);};
void()	lguard_turret_atk2	=[	$attak102,	lguard_turret_atk3	] {ai_face();self.attack_elevation = IterateElevation(OGRE_DEFAULT_ELEVATION, self.enemy.origin);};
void()	lguard_turret_atk3	={
	self.attack_elevation = IterateElevation(self.attack_elevation, self.enemy.origin);
	self.frame = $attak103;
	self.nextthink = time + .1;
	if (self.style == 5 && self.count < self.t_length)
	{
	  self.count +=1;
	}
	else
	{
	  self.think = lguard_turret_atk4;
	}
	ai_face();
	lguard_fire();
	self.effects = self.effects | EF_MUZZLEFLASH;};
void()	lguard_turret_atk4	=[	$attak104,	lguard_turret_atk5	] {ai_face();};
void()	lguard_turret_atk5	=[	$attak105,	lguard_turret_atk6	] {ai_face();};
void()	lguard_turret_atk6	=[	$attak106,	lguard_turret_atk7	] {ai_face();};
void()	lguard_turret_atk7	=[	$attak107,	lguard_turret_atk8	] {ai_face();SUB_CheckRefire (lguard_turret_atk1);};
void()	lguard_turret_atk8	=[	$attak108,	lguard_turret_atk9	] {ai_face();};
void()	lguard_turret_atk9	=[	$stand104,	lguard_turret_atk10	] {ai_face();};
void()	lguard_turret_atk10	=[	$stand105,	lguard_seeking_stand1	] {ai_face();};
void()	lguard_seeking_stand1	=[	$stand101,	lguard_seeking_stand2	] {ai_run(0);};
void()	lguard_seeking_stand2	=[	$stand102,	lguard_seeking_stand3	] {ai_run(0);};
void()	lguard_seeking_stand3	=[	$stand103,	lguard_seeking_stand4	] {ai_run(0);};
void()	lguard_seeking_stand4	=[	$stand104,	lguard_seeking_stand5	] {ai_run(0);};
void()	lguard_seeking_stand5	=[	$stand105,	lguard_seeking_stand6	] {ai_run(0);};
void()	lguard_seeking_stand6	=[	$stand106,	lguard_seeking_stand7	] {ai_run(0);};
void()	lguard_seeking_stand7	=[	$stand107,	lguard_seeking_stand8	] {ai_run(0);};
void()	lguard_seeking_stand8	=[	$stand108,	lguard_seeking_stand1	] {ai_run(0);};
// new frames for turrets end

void()	lguard_pain1	=[	$pain101,		lguard_pain2	] {ai_pain(3);};
void()	lguard_pain2	=[	$pain102,		lguard_pain3	] {ai_painforward(4);};
void()	lguard_pain3	=[	$pain103,		lguard_pain4	] {ai_painforward(1);};
void()	lguard_pain4	=[	$pain104,		lguard_pain5	] {ai_painforward(1);};
void()	lguard_pain5	=[	$pain105,		lguard_run1	] {ai_pain(1);};

void()	lguard_painb1	=[	$pain201,	lguard_painb2	] {ai_pain(13);};
void()	lguard_painb2	=[	$pain202,	lguard_painb3	] {ai_pain(1);};
void()	lguard_painb3	=[	$pain203,	lguard_painb4	] {ai_painforward(2);};
void()	lguard_painb4	=[	$pain204,	lguard_painb5	] {ai_painforward(4);};
void()	lguard_painb5	=[	$pain205,	lguard_painb6	] {ai_painforward(2);};
void()	lguard_painb6	=[	$pain206,	lguard_painb7	] {ai_painforward(3);};
void()	lguard_painb7	=[	$pain207,	lguard_run1	] {ai_painforward(2);};


void()	lguard_painc1	=[	$pain301,	lguard_painc2	] {ai_pain(8);};
void()	lguard_painc2	=[	$pain302,	lguard_painc3	] {ai_painforward(10);};
void()	lguard_painc3	=[	$pain303,	lguard_painc4	] {ai_pain(4);};
void()	lguard_painc4	=[	$pain304,	lguard_painc5	] {ai_pain(1);};
void()	lguard_painc5	=[	$pain305,	lguard_painc6	] {ai_pain(3);};
void()	lguard_painc6	=[	$pain306,	lguard_painc7	] {};
void()	lguard_painc7	=[	$pain307,	lguard_painc8	] {ai_painforward(3);};
void()	lguard_painc8	=[	$pain308,	lguard_painc9	] {};
void()	lguard_painc9	=[	$pain309,	lguard_painc10] {};
void()	lguard_painc10=[	$pain310,	lguard_painc11] {};
void()	lguard_painc11=[	$pain311,	lguard_painc12] {};
void()	lguard_painc12=[	$pain312,	lguard_painc13] {ai_painforward(1);};
void()	lguard_painc13=[	$pain313,	lguard_painc14] {};
void()	lguard_painc14=[	$pain314,	lguard_painc15] {ai_painforward(1);};
void()	lguard_painc15=[	$pain315,	lguard_painc16] {ai_painforward(2);};
void()	lguard_painc16=[	$pain316,	lguard_painc17] {ai_painforward(4);};
void()	lguard_painc17=[	$pain317,	lguard_painc18] {ai_painforward(3);};
void()	lguard_painc18=[	$pain318,	lguard_run1] {};

void()	lguard_paind1	=[	$pain401,	lguard_paind2	] {};
void()	lguard_paind2	=[	$pain402,	lguard_paind3	] {};
void()	lguard_paind3	=[	$pain403,	lguard_paind4	] {};
void()	lguard_paind4	=[	$pain404,	lguard_paind5	] {ai_pain(10);};
void()	lguard_paind5	=[	$pain405,	lguard_paind6	] {ai_pain(6);};
void()	lguard_paind6	=[	$pain406,	lguard_paind7	] {ai_painforward(8);};
void()	lguard_paind7	=[	$pain407,	lguard_paind8	] {ai_painforward(4);};
void()	lguard_paind8	=[	$pain408,	lguard_paind9	] {ai_painforward(1);};
void()	lguard_paind9	=[	$pain409,	lguard_paind10] {};
void()	lguard_paind10=[	$pain410,	lguard_paind11] {ai_painforward(2);};
void()	lguard_paind11=[	$pain411,	lguard_paind12] {ai_painforward(5);};
void()	lguard_paind12=[	$pain412,	lguard_paind13] {ai_painforward(2);};
void()	lguard_paind13=[	$pain413,	lguard_paind14] {ai_pain(1);};
void()	lguard_paind14=[	$pain414,	lguard_paind15] {ai_pain(1);};
void()	lguard_paind15=[	$pain415,	lguard_paind16] {ai_painforward(3);};
void()	lguard_paind16=[	$pain416,	lguard_paind17] {ai_painforward(2);};
void()	lguard_paind17=[	$pain417,	lguard_run1] {};
void(entity attacker, float damage)	lguard_pain =
{
	local float r;

	if (self.pain_finished > time)
		return;


	    r = random();

	if (r < 0.3 || ((damage > self.health *0.4) && r < 0.25))
	{  // turret checks moved here to play pain sounds correctly - dumptruck_ds
		self.pain_finished = time + 0.6;
		sound_pain (self, CHAN_VOICE, "lguard/solpain1.wav", 1, ATTN_NORM);
		if (self.spawnflags & I_AM_TURRET)
			return;
		else
		lguard_pain1 ();
	}
	else if (r < 0.6 || ((damage > self.health *0.4) && r < 0.5))
	{
		self.pain_finished = time + .8;
		sound_misc (self, CHAN_VOICE, "lguard/solpain1.wav", 1, ATTN_NORM);
		if (self.spawnflags & I_AM_TURRET)
			return;
		else
		lguard_painb1 ();
	}
	else if (r < 0.8 || ((damage > self.health *0.4) && r < 0.7))
	{
		self.pain_finished = time + 1.8;
		sound_misc (self, CHAN_VOICE, "lguard/solpain2.wav", 1, ATTN_NORM);
		if (self.spawnflags & I_AM_TURRET)
			return;
		else
		lguard_painc1 ();
	}
	else {
		self.pain_finished = time + 1.8;
		sound_misc (self, CHAN_VOICE, "lguard/solpain3.wav", 1, ATTN_NORM);
		if (self.spawnflags & I_AM_TURRET)
			return;
		else
		lguard_paind1 ();
	}
};

void() lguard_fire =
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
		GuardFireGrenade();
	}

else if (self.style == 3)

	{
		ai_face();
		GuardFireBlaster();
	}

else if (self.style == 4 || self.style == 5)

	{
		ai_face();
		GuardFireSpike();
	}

else

	{
		local	vector	dir;
		local	entity	en;

		ai_face();

		sound_attack (self, CHAN_WEAPON, "lguard/solatck1.wav", 1, ATTN_NORM);

		// fire somewhat behind the player, so a dodging player is harder to hit
		en = self.enemy;

		dir = en.origin - en.velocity*0.2;
		dir = normalize (dir - self.origin);

		FireBullets (4, dir, '0.1 0.1 0');
	}

};

void()	lguard_die1	=[	$death201,	lguard_die2	] {ai_back(5);};
void()	lguard_die2	=[	$death202,	lguard_die3	] {ai_back(5);};
void()	lguard_die3	=[	$death203,	lguard_die4	]
{self.solid = SOLID_NOT;
// style ammotype check -- dumptruck_ds
	
if(!self.keep_ammo)DropBackpack();
ai_back(5);};
void()	lguard_die4	=[	$death204,	lguard_die5	] {};
void()	lguard_die5	=[	$death205,	lguard_die6	] {};
void()	lguard_die6	=[	$death206,	lguard_die7	] {};
void()	lguard_die7	=[	$death207,	lguard_die8	] {};
void()	lguard_die8	=[	$death208,	lguard_die9	] {};
void()	lguard_die9	=[	$death209,	lguard_die10	] {};
void()	lguard_die10	=[	$death210,	lguard_die11	] {};
void()	lguard_die11	=[	$death211,	lguard_die12	] {};
void()	lguard_die12	=[	$death212,	lguard_die13	] {};
void()	lguard_die13	=[	$death213,	lguard_die14	] {};
void()	lguard_die14	=[	$death214,	lguard_die15	] {};
void()	lguard_die15	=[	$death215,	lguard_die16	] {};
void()	lguard_die16	=[	$death216,	lguard_die17	] {};
void()	lguard_die17	=[	$death217,	lguard_die18	] {};
void()	lguard_die18	=[	$death218,	lguard_die19	] {};
void()	lguard_die19	=[	$death219,	lguard_die20	] {};
void()	lguard_die20	=[	$death220,	lguard_die21	] {};
void()	lguard_die21	=[	$death221,	lguard_die22	] {};
void()	lguard_die22	=[	$death222,	lguard_die23	] {};
void()	lguard_die23	=[	$death223,	lguard_die24	] {};
void()	lguard_die24	=[	$death224,	lguard_die25	] {};
void()	lguard_die25	=[	$death225,	lguard_die26	] {};
void()	lguard_die26	=[	$death226,	lguard_die27	] {};
void()	lguard_die27	=[	$death227,	lguard_die28	] {};
void()	lguard_die28	=[	$death228,	lguard_die29	] {};
void()	lguard_die29	=[	$death229,	lguard_die30	] {};
void()	lguard_die30	=[	$death230,	lguard_die31	] {};
void()	lguard_die31	=[	$death231,	lguard_die32	] {};
void()	lguard_die32	=[	$death232,	lguard_die33	] {};
void()	lguard_die33	=[	$death233,	lguard_die34	] {};
void()	lguard_die34	=[	$death234,	lguard_die35	] {};
void()	lguard_die35	=[	$death235,	lguard_die35	] {};

void()	lguard_dieb1	=[	$death501,	lguard_dieb2	] {};
void()	lguard_dieb2	=[	$death502,	lguard_dieb3	] {ai_back(5);};
void()	lguard_dieb3	=[	$death503,	lguard_dieb4	]
{self.solid = SOLID_NOT;
// style ammotype check -- dumptruck_ds
	
if(!self.keep_ammo)DropBackpack();ai_back(4);}; //dumptruck_ds
void()	lguard_dieb4	=[	$death504,	lguard_dieb5	] {ai_back(13);};
void()	lguard_dieb5	=[	$death505,	lguard_dieb6	] {ai_back(3);};
void()	lguard_dieb6	=[	$death506,	lguard_dieb7	] {ai_back(4);};
void()	lguard_dieb7	=[	$death507,	lguard_dieb8	] {};
void()	lguard_dieb8	=[	$death508,	lguard_dieb9	] {};
void()	lguard_dieb9	=[	$death509,	lguard_dieb10	] {};
void()	lguard_dieb10	=[	$death510,	lguard_dieb11	] {};
void()	lguard_dieb11	=[	$death511,	lguard_dieb12	] {};
void()	lguard_dieb12	=[	$death512,	lguard_dieb13	] {};
void()	lguard_dieb13	=[	$death513,	lguard_dieb14	] {};
void()	lguard_dieb14	=[	$death514,	lguard_dieb15	] {};
void()	lguard_dieb15	=[	$death515,	lguard_dieb16	] {};
void()	lguard_dieb16	=[	$death516,	lguard_dieb17	] {};
void()	lguard_dieb17	=[	$death517,	lguard_dieb18	] {};
void()	lguard_dieb18	=[	$death518,	lguard_dieb19	] {};
void()	lguard_dieb19	=[	$death519,	lguard_dieb20	] {};
void()	lguard_dieb20	=[	$death520,	lguard_dieb21	] {};
void()	lguard_dieb21	=[	$death521,	lguard_dieb22	] {};
void()	lguard_dieb22	=[	$death522,	lguard_dieb23	] {};
void()	lguard_dieb23	=[	$death523,	lguard_dieb24	] {};
void()	lguard_dieb24	=[	$death524,	lguard_dieb24	] {};

void() lguard_die =
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
	sound_death (self, CHAN_VOICE, "lguard/soldeth1.wav", 1, ATTN_NORM);
	DropStuff();
	if (random() < 0.5)
		lguard_die1 ();
	else
		lguard_dieb1 ();
};


/*QUAKED monster_lguard (1 0 0) (-16 -16 -24) (16 16 40) AMBUSH X X TRIGGER_SPAWNED X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
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
void() monster_lguard =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	if (deathmatch)
	{
		remove(self);
		return;
	}
	//dumptruck_ds custom_mdls
	precache_body_model ("progs/lguard.mdl");
	precache_head_model ("progs/h_guard.mdl");
	precache_proj_model ("progs/missile.mdl"); // used if style == 1
	precache_proj_model ("progs/grenade.mdl"); // used if style == 2
	precache_model2 ("progs/laser.mdl"); // used if style == 3
	//dumptruck_ds custom_mdls
	precache_model ("progs/gib1.mdl");
	precache_model ("progs/gib2.mdl");
	precache_model ("progs/gib3.mdl");

	precache_sound_death ("lguard/soldeth1.wav");
	precache_sound_idle ("lguard/solidle1.wav");
	precache_sound_pain ("lguard/solpain1.wav");
	precache_sound_misc1 ("lguard/solpain2.wav");
	precache_sound_misc2 ("lguard/solpain3.wav");
	precache_sound_attack ("lguard/solatck1.wav");
	precache_sound_sight ("lguard/solsght1.wav");
	precache_sound_misc3 ("lguard/solsrch1.wav");
	precache_sound2 ("enforcer/enfire.wav"); // used if style == 3
	precache_sound2 ("enforcer/enfstop.wav"); // used if style == 3

	precache_sound ("player/udeath.wav");		// gib death

	precache_gib1 ("progs/gib1.mdl");
	precache_gib2 ("progs/gib2.mdl");
	precache_gib3 ("progs/gib3.mdl");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	//dumptruck_ds custom_mdls
	body_model ("progs/lguard.mdl");

	setsize (self, '-16 -16 -24', '16 16 40');

	if (!self.proj_speed_mod)
	{
		self.proj_speed_mod = 1;
	}

	if (!self.health) //thanks RennyC -- dumptruck_ds
	self.health = 25;
	self.th_stand = lguard_stand1;
	self.th_walk = lguard_walk1;
	if (self.spawnflags & I_AM_TURRET)
	{
	  self.th_run = lguard_seeking_stand1;
	}
	else
	{
		self.th_run = lguard_run1;
	}
	if (self.style == 3){
		self.th_missile = lguard_atk2_1;
	} else {
	self.th_missile = lguard_atk1;
	}
	self.th_turret = lguard_turret_atk1;
	if !(self.berserk) //Berserk test from http://celephais.net/board/view_thread.php?id=4&start=3465 -- dumptruck_ds
	self.th_pain = lguard_pain;
	else
	self.th_pain = SUB_NullPain;
	self.th_die = lguard_die;

	walkmonster_start ();
};

/* Scenic Dead Monster Patch stuff here from DeadStuff mod -- dumptruck_ds */

/*QUAKED monster_dead_lguard (0 0.5 0.8) (-16 -16 -24) (16 16 32) SOLID FACE_UP X X X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
{
	model ({"path":"progs/soldier.mdl","frame":28});
}
*/
void() monster_dead_lguard =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	precache_model("progs/soldier.mdl");
	setmodel(self, "progs/soldier.mdl");
	if (self.spawnflags & 2)
	{
		self.frame = $death210;

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
		self.frame = $death511;
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
