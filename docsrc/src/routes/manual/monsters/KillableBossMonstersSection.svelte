<script>
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="killable-boss-monsters">monster_boss2 monster_oldone2</h2>

<TextSection>
	These are killable variants of the original boss monsters. On Skill 1, Easy, they both
	have 1000 HP. On Normal, Hard and Nightmare the HP is set to 3000. You can also set a
	custom `health` value as with other monsters.
</TextSection>

<TextSection>
	Upon death, Shub will always gib, but Chthon will only gib if his HP drops below `-50`
	with one hit, for example from Quad Damage.
</TextSection>
