<script>
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image from '$lib/assets/manual/monsters/monsters-misc-teleporttrain-01.png';
</script>

<h2 id="misc-teleporttrain">misc_teleporttrain</h2>

<TextSection>
	This was used for the final boss level in the original game. In progs_dump you can use
	this as a moving decoration with a custom model or even target it as a spawn point for a
	`func_monster_spawner`.
</TextSection>

<TextSection>
	If you use it as a moving spawn point, make sure to select the `Don't Rotate` spawnflag
	or you will get a pretty hilarious game-breaking effect.
</TextSection>

<TextSection>
	You set this up like a `func_train` using `path_corner`s. By default, it will move
	automatically between path corners upon map load. However, you can have it wait to move
	by giving it a `targetname`. If you need to target it as a spawner and want it to move
	on map load, use the `Start On` spawnflag.
</TextSection>

<TextSection>
	Here's a <a href="https://youtu.be/J5EIuLXkBw4">video tutorial</a> on how to use trains
	and `path_corner`s in Quake.
</TextSection>

<TextSection>
	You can add `effects` with the dropdown, use a custom model with the `mdl_body` key, and
	even make it invisible with spawnflag `8`. For example, you can animate a moving light
	around a level using the dim light effect with the invisible flag set.
</TextSection>

<FullWidthImage src={image} alt="misc_teleporttrain example" />
