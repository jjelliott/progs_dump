<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image127 from '$lib/assets/manual/ladders/ladders-trigger-ladder-01.png';
</script>

<h1 id="h.o01eeqnjw3nf">Ladders</h1>

<h2 id="h.j89p9vl2pro">trigger_ladder</h2>

<TextSection>Create a small trigger_ladder brush covered with the trigger texture. Make sure the outside edge of the brush is flush with your ladder geometry. Set the angle key to the direction the player is facing when approaching the ladder. You can use a wedge shaped clip brush to smooth out any "sticky" movements at the top of the ladder as seen below. Please refer to pd_ladders.map for examples.</TextSection>

<FullWidthImage src={image127} alt="Manual illustration" />
