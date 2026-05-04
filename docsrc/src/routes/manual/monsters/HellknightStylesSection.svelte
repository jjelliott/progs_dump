<script>
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image from '$lib/assets/manual/monsters/monsters-hellknight-styles-01.jpg';
</script>

<h2 id="hellknight-styles">Hellknight Styles</h2>

<FullWidthImage src={image} alt="Hellknight styles reference" />

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
			<td>Default</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>1</td>
			<td>Lightning</td>
			<td>No</td>
		</tr>
	</tbody>
</table>
