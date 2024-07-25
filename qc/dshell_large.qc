void() item_dshell_large = 
{
  if (!self.ammo_shells)
  {
    self.ammo_shells = 20;
  }
  if (!self.spawnflags)
  {
    self.spawnflags = 2;
  }
  if (!self.mdl_body)
  {
    self.mdl_body = "progs/dshell1.mdl";
  }
  if (!self.netname)
  {
    self.netname = "a box of shells";
  }
  item_backpack();
};