<script>
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="custom-projectile-speed">Custom Projectile Speed</h2>

<TextSection>
	Starting in version 3.0.0, the speed of a monster projectile, not including grenades,
	can be modified. These projectiles can also be set to homing, and the turning rate can
	be changed.
</TextSection>

<TextSection>
	Similar to `damage_mod`, the `proj_speed_mod` key changes the speed of a monster
	projectile attack. For example, you can increase the speed of the Enforcer's lasers by
	setting `proj_speed_mod` to `2`, or slow them down by setting it to `0.5`. The upper
	limit differs for each projectile type. The max speed is 2000 Quake units per second, so
	Vore balls max out at `8` and nails at `2`.
</TextSection>
