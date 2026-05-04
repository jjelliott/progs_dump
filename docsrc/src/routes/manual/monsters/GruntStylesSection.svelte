<script>
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image from '$lib/assets/manual/monsters/monsters-grunt-styles-01.png';
</script>

<h2 id="grunt-styles">Grunt Styles</h2>

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
			<td>Shotgun, default</td>
			<td>No</td>
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
			<td>Lasers</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Nails</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Nails, rapid fire</td>
			<td>Yes</td>
		</tr>
	</tbody>
</table>

<FullWidthImage src={image} alt="Grunt styles reference" />
