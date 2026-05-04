<script>
	import Column from '$components/Column.svelte';
	import Columns from '$components/Columns.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image1 from '$lib/assets/manual/monsters/monsters-enhanced-zombies-01.png';
	import image2 from '$lib/assets/manual/monsters/monsters-enhanced-zombies-02.png';
</script>

<h2 id="enhanced-zombies">Enhanced Zombies</h2>

<TextSection>
	Zombies have more options in progs_dump. There are motionless, silent versions of the
	crucified decorative zombie, and you can also create a sleeping zombie that will not
	awaken until triggered.
</TextSection>

<TextSection>
	You must target these zombies if the `Spawn Sleeping` spawnflag is set. If you trigger
	spawn a sleeping zombie into a map, you will have to target it a second time to wake it
	up. You can see examples of these new features in the `pd_zombies` sample map.
</TextSection>

<Columns>
	<Column col="6">
		<FullWidthImage src={image1} alt="Enhanced zombie spawnflag example 1" />
	</Column>
	<Column col="6">
		<FullWidthImage src={image2} alt="Enhanced zombie spawnflag example 2" />
	</Column>
</Columns>
