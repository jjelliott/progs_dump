$cd fortress\models\coil
$origin 0 0 0
$scale 1
$base base

$skin yellow
$skin red
$skin blue
$skin green

$frame on1 on2 on3 on4 on5 on6 on7
$frame fire1 fire2 fire3 fire4 fire5 fire6

float TESLA_RANGE = 500;
float ATTACK_DELAY = 2;

float() Tesla_FindTarget;
void() Tesla_FoundTarget;
void(entity attacker, float damage) Tesla_Pain;
void() Tesla_Die;
void() Tesla_Fire;
void() Tesla_Idle;
void() Tesla_Touch;

//float() ReturnTeslaDelay;
entity(float radius) Tesla_RadiusScan;
void() TeslaThink;
void() Tesla_Lose_Glow =
{	
            //spawn_tfog(self.origin);
            //sound (self, CHAN_AUTO, "misc/r_tele3.wav", 1, ATTN_NORM);
            if (self.count == 3) self.count = 1;
	self.effects = self.effects - (self.effects & EF_DIMLIGHT);
};
void() Tesla_Give_Glow =
{
            //spawn_tfog(self.origin);
            //sound (self, CHAN_AUTO, "misc/r_tele4.wav", 1, ATTN_NORM);

            self.pain_finished=1;
  	self.effects = self.effects | EF_DIMLIGHT;
};
void()	tsla_on1	=[	$on1,		tsla_on2	] {self.count=1; TeslaThink();};
void()	tsla_on2	=[	$on1,		tsla_on3	] {TeslaThink();};
void()	tsla_on3	=[	$on2,		tsla_on4	] {TeslaThink();};
void()	tsla_on4	=[	$on2,		tsla_on5	] {TeslaThink();};
void()	tsla_on5	=[	$on3,		tsla_on6	] {TeslaThink();};
void()	tsla_on6	=[	$on3,		tsla_on7	] {TeslaThink();};
void()	tsla_on7	=[	$on4,		tsla_on8	] {TeslaThink();};
void()	tsla_on8	=[	$on4,		tsla_on9	] {TeslaThink();};
void()	tsla_on9	=[	$on5,		tsla_on10	] {TeslaThink();};
void()	tsla_on10	=[	$on5,		tsla_on11	] {TeslaThink();};
void()	tsla_on11   =[	$on6,		tsla_on12	] {TeslaThink();};
void()	tsla_on12	=[	$on6,		tsla_on13	] {TeslaThink();};
void()	tsla_on13	=[	$on7,		tsla_on14	] {TeslaThink();};
void()	tsla_on14	=[	$on7,		tsla_on1	] {TeslaThink();};
//--------------------------------------------------------------//
void()	tsla_fire1	=[	$fire1,		tsla_fire2	] {self.count=2; TeslaThink();};
void()	tsla_fire2	=[	$fire1,		tsla_fire3	] {TeslaThink();};
void()	tsla_fire3	=[	$fire2,		tsla_fire4	] {TeslaThink();};
void()	tsla_fire4	=[	$fire2,		tsla_fire5	] {TeslaThink();};
void()	tsla_fire5	=[	$fire3,		tsla_fire6	] {TeslaThink();};
void()	tsla_fire6	=[	$fire3,		tsla_fire7	] {TeslaThink();};
void()	tsla_fire7	=[	$fire4,		tsla_fire8	] {TeslaThink();};
void()	tsla_fire8	=[	$fire4,		tsla_fire9	] {TeslaThink();};
void()	tsla_fire9	=[	$fire5,		tsla_fire10	] {TeslaThink();};
void()	tsla_fire10	=[	$fire5,		tsla_fire11	] {TeslaThink();};
void()	tsla_fire11	=[	$fire6,		tsla_fire12	] {TeslaThink();};
void()	tsla_fire12	=[	$fire6,		tsla_fire1	] {TeslaThink();};

void() Tesla_Die =
{

	ThrowGib("progs/tesgib1.mdl", self.health);
	ThrowGib("progs/tesgib2.mdl", self.health);
    ThrowGib2("progs/tesgib4.mdl", self.health,self.skin);
    ThrowGib2("progs/tesgib4.mdl", self.health,self.skin);

	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_EXPLOSION);
	WriteCoord (MSG_BROADCAST, self.origin_x);
	WriteCoord (MSG_BROADCAST, self.origin_y);
	WriteCoord (MSG_BROADCAST, self.origin_z);
	self.modelindex = 0;
    //remove(self);
	BecomeExplosion ();
};

entity(float radius) Tesla_RadiusScan = {
    local entity head = findradius(self.origin, radius);
	if (self.enemy != world){
	while (head){
		if(head == self.enemy){
		  return head;
		}
		head = head.chain;
	}
	}
	else
	{
    while (head) 
    {
      if (head.classname == "player") return head;
      head = head.chain;
    }
	}
	return world;
};

float() Tesla_FindTarget =
{
	local entity client;
	self.oldenemy = world; //CH for sbar

	client = Tesla_RadiusScan (TESLA_RANGE);
	//WK Unhack our hack
	//if (self.tf_items & #NIT_TURRET)
	//	self.origin_z = self.origin_z + 40;//+ 40;
	//else
	//	self.origin_z = self.origin_z - 24;

	if (client != self && client != self.enemy)
	{
		// Found a Target
		/*if (self.enemy == client) //Recovering lock
			return Tesla_Fire();*/ // SB not any more you're not
		self.enemy = client;
		self.oldenemy = self.enemy; //CH for sbar
		if (client != world) {
			Tesla_FoundTarget ();
			return 1;
		} else {
			Tesla_Lose_Glow();
		}
	}
	return 0;
};

void() Tesla_FoundTarget =
{
	// Cannon Powerup Sound?
		sound (self, CHAN_VOICE, "weapons/guerset.wav", 1, ATTN_NORM);

	//Glow
		Tesla_Give_Glow();

		self.goalentity = self.enemy;

	self.attack_finished = time + ATTACK_DELAY;
};

void() Tesla_Fire =
{
    //local vector dir;
	//local float hit;
	//local float damage;
	//local float cheater;
	//local vector below;
    /*
    if (self.tf_items & #NIT_TURRET)
	{
		below = '0 0 1';	// So as not to hit tesla.
		below_z = below_z + self.size_z; // Below should be 1 unit below the tesla.

		// Check a varity of locations for a door. 5 and -5 should be the with of tesla
		if (DoorsAt(self.origin - below + '0 0 0'))
			cheater = #TRUE;
		if (DoorsAt(self.origin - below + '8 0 0'))
			cheater = #TRUE;
		if (DoorsAt(self.origin - below + '-8 0 0'))
			cheater = #TRUE;
		if (DoorsAt(self.origin - below + '0 8 0'))
			cheater = #TRUE;
		if (DoorsAt(self.origin - below + '0 -8 0'))
			cheater = #TRUE;

		if (cheater){
			sprint(self.real_owner,#PRINT_HIGH,"The door's wiring conflicts with your tesla's!\n");
			TF_T_Damage(self,world,world,self.health+100,0,0);
			return #FALSE;
		}
	}
	*/
    //WK Stop gun from shooting at dead spies
	if (!self.enemy)
		return;
	if (self.enemy == world)
		return;
	if (self.enemy == self)
		return;
	if (self.enemy.health <= 0)
		return;
	//CH rechecks if target is out of range,  has a little extra room added.
	// SB +100 for each one, values were incorrect before
    local float maxrange;
    maxrange = TESLA_RANGE;

    if (vlen(self.origin - self.enemy.origin) >= maxrange) //+TESLA_RANGE no
		return FALSE;

	self.oldenemy = self.enemy; //CH for sbar

	//WK Hack to get floating sentry working - reset before all the returns
	//if (self.tf_items & #NIT_TURRET) self.origin_z = self.origin_z - 40;// 40
	//else self.origin_z = self.origin_z + 24;
	/*
	if (!visible2(self.enemy, self))
	{
		if (self.tf_items & #NIT_TURRET) self.origin_z = self.origin_z + 40; // 40
		//else self.origin_z = self.origin_z - 24;
		return #FALSE;
	}

    // ADDED
    if (!visible2(self, self.enemy))
	{
		if (self.tf_items & #NIT_TURRET) self.origin_z = self.origin_z + 40; // 40
		//else self.origin_z = self.origin_z - 24;
		return #FALSE;
	}
*/
	Tesla_Give_Glow(); //FIXED

	

    self.effects = self.effects | EF_MUZZLEFLASH;

	local float distance_ratio = vlen(self.enemy.origin - self.origin) / TESLA_RANGE;
	if (distance_ratio < .3)
	{
    traceline (self.origin, self.enemy.origin, TRUE, self);

        WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte (MSG_BROADCAST, TE_LIGHTNING2);
        WriteEntity (MSG_BROADCAST, self);
        WriteCoord (MSG_BROADCAST, self.origin_x);
        WriteCoord (MSG_BROADCAST, self.origin_y);
        //if (self.tf_items & #NIT_TURRET)
        //    WriteCoord (MSG_BROADCAST, self.origin_z + 10);
        //else
            WriteCoord (MSG_BROADCAST, self.origin_z + 30);
        WriteCoord (MSG_BROADCAST, self.enemy.origin_x);
        WriteCoord (MSG_BROADCAST, self.enemy.origin_y);
        WriteCoord (MSG_BROADCAST, self.enemy.origin_z);
    

	sound (self, CHAN_WEAPON, "enforcer/enfstop.wav", 1, ATTN_NORM);
	LightningDamage (self.origin + '0 0 30', trace_endpos, self, 2);
	}
	else {
    traceline (self.origin, self.enemy.origin, TRUE, self);

        WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte (MSG_BROADCAST, TE_LIGHTNING1);
        WriteEntity (MSG_BROADCAST, self);
        WriteCoord (MSG_BROADCAST, self.origin_x);
        WriteCoord (MSG_BROADCAST, self.origin_y);
        //if (self.tf_items & #NIT_TURRET)
        //    WriteCoord (MSG_BROADCAST, self.origin_z + 10);
        //else
            WriteCoord (MSG_BROADCAST, self.origin_z + 30);
        WriteCoord (MSG_BROADCAST, self.enemy.origin_x);
        WriteCoord (MSG_BROADCAST, self.enemy.origin_y);
        WriteCoord (MSG_BROADCAST, self.enemy.origin_z);
    

	sound (self, CHAN_WEAPON, "weapons/lhit.wav", 1, ATTN_NORM);
	if (vlen(self.enemy.origin - self.origin) >= TESLA_RANGE) //Only play end sound if far away
		sound (self.enemy, CHAN_WEAPON, "weapons/lhit.wav", 1, ATTN_NORM); //CH at start and end of arc

	
	LightningDamage (self.origin + '0 0 30', trace_endpos, self, 8);
	}
   	self.attack_finished = time + (ATTACK_DELAY * distance_ratio);
    
    
	//if (self.tf_items & #NIT_TURRET) self.origin_z = self.origin_z + 40; //40
	//else self.origin_z = self.origin_z - 24;

	//self.attack_finished = 1;

	
};

void() TeslaThink =
{    
    self.nextthink = time + .05;
	Tesla_Idle();
    if (self.count == 1 && self.effects & EF_DIMLIGHT)
    {
        tsla_fire1();
        return;
    }
    else if (self.count == 2 && !(self.effects & EF_DIMLIGHT))
    {
        tsla_on1();
        return;
    }
};
void() Tesla_Idle =
{
	Tesla_FindTarget();
	//self.waitmax holds if we have a target
	if (self.enemy != world && self.attack_finished < time) //If we have target, shoot it
        Tesla_Fire();
    
	/*
	if (self.attack_finished < 1)
		self.attack_finished = self.attack_finished + 0.1;
	*/
	//self.think = Tesla_Idle; //WK Unecessary but keeps us in the loop
};

void(entity attacker, float damage) Tesla_Pain = {
	self.think = tsla_on1;
};

void() Tesla_Touch = {
	if (other.classname == "player"){
		if (!self.invisible_finished || self.invisible_finished + ATTACK_DELAY < time ){
			self.invisible_finished = time + ATTACK_DELAY;
			traceline (self.origin, other.origin, TRUE, self);

        WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte (MSG_BROADCAST, TE_LIGHTNING2);
        WriteEntity (MSG_BROADCAST, self);
        WriteCoord (MSG_BROADCAST, self.origin_x);
        WriteCoord (MSG_BROADCAST, self.origin_y);
        //if (self.tf_items & #NIT_TURRET)
        //    WriteCoord (MSG_BROADCAST, self.origin_z + 10);
        //else
        WriteCoord (MSG_BROADCAST, self.origin_z + 30);
        WriteCoord (MSG_BROADCAST, other.origin_x);
        WriteCoord (MSG_BROADCAST, other.origin_y);
        WriteCoord (MSG_BROADCAST, other.origin_z);
    

	sound (self, CHAN_WEAPON, "enforcer/enfstop.wav", 1, ATTN_NORM);
	LightningDamage (self.origin + '0 0 30', trace_endpos, self, 2);
	}
	}
};

void() monster_teslacoil = {
    if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	if (deathmatch)
	{
		remove(self);
		return;
	}

    precache_sound_attack("weapons/guerset.wav");

    precache_body_model("progs/coil.mdl");
    precache_gib1("progs/tesgib1.mdl");
    precache_gib2("progs/tesgib2.mdl");
    precache_gib3("progs/tesgib4.mdl");

    body_model ("progs/coil.mdl"); // dumptruck_ds custom_mdls
	self.skin = 3;
	setsize (self, '-16 -16 -25', '16 16 23');

	self.obit_method = "electrocuted";
	self.obit_name = "a tesla coil";
	self.solid = SOLID_SLIDEBOX;
	self.flags = self.flags | FL_MONSTER;
	self.takedamage = DAMAGE_AIM;
	self.movetype = MOVETYPE_TOSS;
    self.th_die = Tesla_Die;
    self.th_pain = Tesla_Pain;
    self.th_missile = Tesla_Fire;
	self.touch = Tesla_Touch;
    self.nextthink = time + 0.5;
    self.think = tsla_on1;
	self.health = 200;
	monster_update_total(1);
}