void() monster_nightmare_imp = 
{
  if (!self.damage_mod)
  {
    self.damage_mod = 1.4;
  }
  if (!self.health)
  {
    self.health = 200;
  }
  if (!self.skin)
  {
    self.skin = 1;
  }
  if (!self.mdl_proj)
  {
    self.mdl_proj = "progs/nimpball.spr";
  }
  if (!self.alpha){
    self.alpha = 0.7;
  }
  monster_imp();
};