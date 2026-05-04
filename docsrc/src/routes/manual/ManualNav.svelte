<script>

	import { isLocalManual } from '$lib/is-local-manual.js';
	import { resolve } from '$app/paths';
	import SpawnflagNav from './spawnflags/nav.svelte';
	import MonstersNav from './monsters/nav.svelte';
	import ItemsNav from './items/nav.svelte';
	import SoundsNav from './sounds/nav.svelte';
	import ModelsNav from './models/nav.svelte';
	import TriggersNav from './triggers/nav.svelte';
	import PlatformsNav from './platforms/nav.svelte';
	import EntitiesNav from './entities/nav.svelte';
	import LaddersNav from './ladders/nav.svelte';
	import BreakablesNav from './breakables/nav.svelte';
	import EffectsNav from './effects/nav.svelte';
	import TextToolsNav from './text-tools/nav.svelte';
	import CutscenesNav from './cutscenes/nav.svelte';
	import RotationNav from './rotation/nav.svelte';
	import SampleMapsNav from './sample-maps/nav.svelte';
	import CreditsNav from './appendicies/nav.svelte';
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

		<ManualNavListItem page="/manual" tag="#getting-started">Getting Started</ManualNavListItem>
		<ManualNavListItem page="/manual" tag="#requirements" indent="1">Requirements</ManualNavListItem>
		<ManualNavListItem page="/manual" tag="#recommended-engines" indent="1">Recommended Engines</ManualNavListItem>
		<ManualNavListItem page="/manual" tag="#installation" indent="1">Installation</ManualNavListItem>
		<ManualNavListItem page="/manual" tag="#dev-notes" indent={1}>Development	Notes</ManualNavListItem>
		<SpawnflagNav/>
		<MonstersNav />
		<ItemsNav />
		<SoundsNav />
		<ModelsNav />
		<TriggersNav />
		<PlatformsNav />
		<EntitiesNav />
		<LaddersNav />
		<BreakablesNav />
		<EffectsNav />
		<TextToolsNav />
		<CutscenesNav />
		<RotationNav />
		<SampleMapsNav />
		<CreditsNav />
	</ul>
</nav>
