<script>
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="func-monster-spawner">func_monster_spawner</h2>

<TextSection>
	When activated, it spawns standard id1 monsters to its targeted
	`info_monster_spawnpoint`. The monster total is updated upon each spawn.
</TextSection>

<TextSection>
	Choose the style of monster via the `Style` dropdown. `Style2` set to `1` overrides
	`Style` and chooses a random monster. `Count` is how many monsters to spawn, default `5`.
	`Wait` is the default time between spawns, default `5` seconds. `Berserk` can be set to
	`1` to skip most pain animations.
</TextSection>

<TextSection>
	This entity can only use default health, models and sounds.
</TextSection>
