<script>
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="misc-infight">misc_infight</h2>

<TextSection>
	This point entity allows a mapper to pit one specific monster against another. You can
	only use this with a pair of monsters.
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
			<td>target</td>
			<td>The monster who will get angry</td>
		</tr>
		<tr>
			<td>target2</td>
			<td>Who `target` will get angry at</td>
		</tr>
	</tbody>
</table>

<Card>
	<CardBody>
		By default, the infighting does not start mutually. `target2` will only get mad at
		`target` after it has been attacked. If you want them both angry when the
		`misc_infight` is triggered, use the `Mutual hate` spawnflag.
	</CardBody>
</Card>
