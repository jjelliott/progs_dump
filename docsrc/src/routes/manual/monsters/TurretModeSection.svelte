<script>
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image1 from '$lib/assets/manual/monsters/monsters-turret-mode-01.png';
	import image2 from '$lib/assets/manual/monsters/monsters-turret-mode-02.png';
	import image3 from '$lib/assets/manual/monsters/monsters-turret-mode-03.png';
	import image4 from '$lib/assets/manual/monsters/monsters-turret-mode-04.png';
	import image5 from '$lib/assets/manual/monsters/monsters-turret-mode-05.jpg';
</script>

<h2 id="turret-mode">Turret Mode</h2>

<TextSection>
	Grunts, Enforcers, Ogres, Ogre Marksmen, Hellknights, Shalrath, Shamblers and Zombies can
	be set to turret mode via a spawnflag. This includes styled versions like Rocket Grunts
	and so on. They will never pursue the player on foot, so keep that in mind when placing
	them.
</TextSection>

<TextSection>
	When the player is out of sight they will cease fire. Zombies and Ogre Marksman variants
	are partially z-aware. The Shambler lightning attack range is increased by 300 to account
	for vertical positions, and the same applies to the Enforcer and Hellknight lightning
	styles. You can see turret mode in action in the `pd_turrets` sample map.
</TextSection>

<FullWidthImage src={image1} alt="Turret mode example 1" />

<TextSection>
	We've included models with a few simple custom skins for styled monsters that can be set
	in the `skin` key. You can also use your own models and skins.
</TextSection>

<FullWidthImage src={image2} alt="Turret mode example 2" />
<FullWidthImage src={image3} alt="Turret mode example 3" />
<FullWidthImage src={image4} alt="Turret mode example 4" />
<FullWidthImage src={image5} alt="Turret mode example 5" />
