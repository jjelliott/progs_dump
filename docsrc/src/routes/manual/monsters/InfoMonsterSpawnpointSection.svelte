<script>
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="info-monster-spawnpoint">info_monster_spawnpoint</h2>

<TextSection>
	This is the destination for `func_monster_spawner`. Alternatively, you can use a
	`misc_teleporttrain` for a moving spawn point.
</TextSection>

<TextSection>
	A `func_monster_spawner` will wait to spawn until there is nothing that can take damage
	within a 128 unit radius. The `info_monster_spawnpoint` only sets the position for the
	spawn. The `func_monster_spawner` determines whether a monster is in range, so keep both
	entities close together.
</TextSection>

<TextSection>
	You cannot use multiple `func_monster_spawner`s with one spawn point.
</TextSection>

<Card>
	<CardBody>
		Because monster bounding boxes vary so much, pay attention to the larger bounding box
		of the `info_monster_spawnpoint`. Keep it clear of doors, buttons and other geometry
		so your monsters have some room to enter this dimension.
	</CardBody>
</Card>
