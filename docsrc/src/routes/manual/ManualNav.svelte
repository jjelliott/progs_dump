<script>

	import { isLocalManual } from '$lib/is-local-manual.js';
	import { resolve } from '$app/paths';
	import SpawnflagNav from './spawnflags/nav.svelte';
	import MonstersNav from './monsters/nav.svelte';
	import ManualNavListItem from './ManualNavListItem.svelte';
	import { singlePage } from '$lib/context.js';


</script>

<nav>
	<ul style="list-style: none">
		{#if !isLocalManual()}
			{#if singlePage.get()}
				<a href={resolve("/manual")}>Multi-page Version</a>
			{:else }
				<a href={resolve("/manual/single")}>Single-page Version</a>
			{/if}
			{:else}
			<ManualNavListItem page="" tag="#pd_intro">Introduction</ManualNavListItem>
			<ManualNavListItem page="" tag="#pd_features" indent={1}>Features</ManualNavListItem>
		{/if}
		<ManualNavListItem page="/manual" tag="#installation">Installation
		</ManualNavListItem>
		<ManualNavListItem page="/manual" tag="#dev-notes" indent={1}>Development
			Notes
		</ManualNavListItem>
		<SpawnflagNav/>
		<MonstersNav />
	</ul>
</nav>