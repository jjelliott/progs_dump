void() item_q2shell = 
{
  if (!self.ammo_shells)
  {
    self.ammo_shells = 10;
  }
  if (!self.spawnflags)
  {
    self.spawnflags = 2;
  }
  if (!self.mdl_body)
  {
    self.mdl_body = "progs/q2shells.mdl";
  }
  if (!self.netname)
  {
    self.netname = "a box of shells";
  }
  item_backpack();
};