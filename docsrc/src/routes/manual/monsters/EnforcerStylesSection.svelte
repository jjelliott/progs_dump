<script>
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image from '$lib/assets/manual/monsters/monsters-enforcer-styles-01.png';
</script>

<h2 id="enforcer-styles">Enforcer Styles</h2>

<FullWidthImage src={image} alt="Enforcer styles reference" />

<table class="table">
	<thead>
		<tr>
			<th>Style</th>
			<th>Description</th>
			<th>Projectile Homing</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>0</td>
			<td>Lasers, default</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>1</td>
			<td>Rockets</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Grenades</td>
			<td>No</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Nails, single fire</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Lightning</td>
			<td>No</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Nails, rapid fire</td>
			<td>Yes</td>
		</tr>
	</tbody>
</table>

<TextSection>
	As with the Grunt and Ogre, you can use the `mdl_` and `snd_` keys to replace
	projectiles, head, body, sounds and skins to create variations of the Enforcer.
</TextSection>
