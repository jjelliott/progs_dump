<script>
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="enhanced-hellknights">Enhanced Hellknights</h2>

<TextSection>
	As of version 3.0.0, Hellknights can fire spikes that explode on contact using the
	`projexpl` key. There is also a lightning style for Hellknights detailed below.
</TextSection>

<table class="table">
	<thead>
		<tr>
			<th>projexpl Selection</th>
			<th>Details</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>0</td>
			<td>Default, no explosions</td>
		</tr>
		<tr>
			<td>1</td>
			<td>All projectiles explode</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Alternate between exploding and not</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Projectiles randomly explode</td>
		</tr>
	</tbody>
</table>
