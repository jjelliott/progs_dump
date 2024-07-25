void() item_dshell_small = 
{
  if (!self.ammo_shells)
  {
    self.ammo_shells = 4;
  }
  if (!self.spawnflags)
  {
    self.spawnflags = 2;
  }
  if (!self.mdl_body)
  {
    self.mdl_body = "progs/dshell2.mdl";
  }
  if (!self.netname)
  {
    self.netname = "4 shotgun shells";
  }
  item_backpack();
};