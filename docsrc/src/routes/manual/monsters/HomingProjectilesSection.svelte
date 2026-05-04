<script>
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="homing-projectiles">Homing Projectiles</h2>

<TextSection>
	Starting in version 3.0.0, most monster projectiles, excluding grenades, can be set to
	homing. Any non-zero value from `0.1` to `1` will enable homing for the applicable
	projectiles. In `weapons.qc`, ILike80sRock explains how homing works:
</TextSection>

<Card>
	<CardBody>
		"This finds a vector somewhere between the vector the projectile is currently traveling
		on and the vector it would normally snap to for homing. If you set homing to `.25` it
		will go 25% toward the new direction, but keep 75% of the original vector, resulting
		in a wider turning range."
	</CardBody>
</Card>

<TextSection>
	Lower numbers mean a wider homing range, while homing set to `1` would mean traveling in
	a straight line. Additionally, setting the `waitmin` key will increase the `homing`
	factor by `.05` over time after that many seconds.
</TextSection>

<TextSection>
	For example, consider a style 1 Grunt that shoots rockets with its `homing` key set to
	`.25`. If you set `waitmin` to `3` seconds, after that amount of time the rocket homing
	range will increase by `.05` every time it recalculates direction. This increases the
	accuracy over time after that delay and helps it reach its target more quickly.
</TextSection>

<TextSection>
	To disable homing on a Shalrath, set its `homing` key to `-1`. This only applies to the
	Shalrath.
</TextSection>

<Card color="warning">
	<CardBody>
		Homing and speed modifiers can really change the core gameplay of Quake. As always, use
		proper game design to communicate any drastic changes to the player so these unique
		attacks are not a total surprise.
	</CardBody>
</Card>

<TextSection>
	You can do this with on-screen text or by isolating the modified monster in a mini-boss
	arena or some other unique setup.
</TextSection>

<TextSection>Monsters that can use these speed and homing features include:</TextSection>

<ul>
	<li>`monster_army` rockets, lasers and nails</li>
	<li>`monster_enforcer` rockets, lasers and nails</li>
	<li>`monster_hellknight`</li>
	<li>`monster_shalrath`</li>
	<li>`monster_wizard`</li>
	<li>`monster_ogre` flak, sniper and lava ball variants</li>
	<li>`monster_boss` and `monster_boss2`</li>
	<li>`monster_oldone` and `monster_oldone2`</li>
</ul>
