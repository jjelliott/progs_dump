<script>
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image from '$lib/assets/manual/monsters/monsters-custom-monster-sounds-01.png';
</script>

<h2 id="custom-monster-sounds">Custom Monster Sounds</h2>

<TextSection>
	As with models, progs_dump allows you to replace the sounds a monster makes with custom
	audio. Most sounds can be replaced with some exceptions. Each monster entry in the FGD
	and DEF details any sounds that are not obvious with a hint in all caps. For example,
	`snd_misc2` will replace the Enforcer's "HALT!" sight sound.
</TextSection>

<TextSection>
	You can see tips on how to audition existing sounds and models in the
	<a href="#custom-monster-example">Custom Monster Example</a> section below.
</TextSection>

<FullWidthImage src={image} alt="Custom monster sound settings" />

<Card>
	<CardBody>
		Custom sound files used with these entities must be in the `sound` folder of your mod,
		or a subfolder under that `sound` folder. There is no need to add `sound` in the path.
		For example, `boss2/sight.wav`. Most Quake source ports require mono sound files for
		custom sounds. Do not use stereo files in your mod except for music.
	</CardBody>
</Card>

<table class="table">
	<thead>
		<tr>
			<th>Key</th>
			<th>Details</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>snd_attack</td>
			<td>Path to custom attack sound</td>
		</tr>
		<tr>
			<td>snd_death</td>
			<td>Path to custom death sound</td>
		</tr>
		<tr>
			<td>snd_hit</td>
			<td>Path to custom hit sound, for example when a laser hits a wall</td>
		</tr>
		<tr>
			<td>snd_idle</td>
			<td>Path to custom idle sound</td>
		</tr>
		<tr>
			<td>snd_misc</td>
			<td>Context-dependent custom sound key</td>
		</tr>
		<tr>
			<td>snd_misc1</td>
			<td>Same as above</td>
		</tr>
		<tr>
			<td>snd_misc2</td>
			<td>Same as above</td>
		</tr>
		<tr>
			<td>snd_misc3</td>
			<td>Same as above</td>
		</tr>
		<tr>
			<td>snd_move</td>
			<td>Path to custom sound for Chthon rising from lava</td>
		</tr>
		<tr>
			<td>snd_pain</td>
			<td>Path to custom pain sound</td>
		</tr>
		<tr>
			<td>snd_sight</td>
			<td>Path to custom sight sound</td>
		</tr>
	</tbody>
</table>
