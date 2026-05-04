<script>
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image from '$lib/assets/manual/monsters/monsters-custom-monster-models-01.png';
</script>

<h2 id="custom-monster-models">Custom Monster Models</h2>

<TextSection>
	In Quake it's easy to replace a monster model. Simply place a different model in the
	correct directory with the same name as the monster you want to replace. The drawback is
	that every iteration of that monster will have that model in the game, and the same is
	true of sounds and other assets.
</TextSection>

<TextSection>
	In progs_dump you can use the key | value pairs below to load any compatible model for a
	given monster entity in your map. This allows you to mix and match monster types in the
	same project. Combined with custom health, damage, sounds and other behaviors, you can
	build a wide variety of monsters without any coding.
</TextSection>

<FullWidthImage src={image} alt="Custom monster model settings" />

<TextSection>
	Not all of these key | values appear on each monster. For example, the Spawn has no head
	and therefore no head model.
</TextSection>

<table class="table">
	<thead>
		<tr>
			<th>Key</th>
			<th>Details</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>mdl_body</td>
			<td>Path to custom body model, for example `dev/super_soldier.mdl`</td>
		</tr>
		<tr>
			<td>mdl_head</td>
			<td>Path to custom head model</td>
		</tr>
		<tr>
			<td>mdl_proj</td>
			<td>Path to custom projectile model</td>
		</tr>
		<tr>
			<td>skin</td>
			<td>
				Skin index number of the body model if multiple built-in skins are included.
				Defaults to `0`.
			</td>
		</tr>
		<tr>
			<td>skin_head</td>
			<td>Skin index number for head model if multiple built-in skins are included</td>
		</tr>
		<tr>
			<td>skin_proj</td>
			<td>Skin index number for projectile model if multiple built-in skins are included</td>
		</tr>
		<tr>
			<td>mdl_gib1</td>
			<td>Path to custom 1st gib model</td>
		</tr>
		<tr>
			<td>mdl_gib2</td>
			<td>Path to custom 2nd gib model</td>
		</tr>
		<tr>
			<td>mdl_gib3</td>
			<td>Path to custom 3rd gib model</td>
		</tr>
	</tbody>
</table>

<Card>
	<CardBody>
		If the wrong skin number is entered, the model may not display correctly in TrenchBroom.
		You can also use Quake-compatible sprites and BSPs in addition to models.
	</CardBody>
</Card>
