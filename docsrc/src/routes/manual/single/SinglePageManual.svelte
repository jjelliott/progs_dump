<script>
	import WhatIsIt from '../..//what-is-it/content.svelte';
	import InstallPage from '../content.svelte';
	import Spawnflags from '../spawnflags/content.svelte';
	import Monsters from '../monsters/content.svelte';
	import { manualTitle } from '../manual-title.js';
	import { isLocalManual } from '$lib/is-local-manual.js';
</script>

<svelte:head>
	<title>{manualTitle()}</title>
</svelte:head>
{#if isLocalManual()}
		<WhatIsIt/>
	{/if}
<InstallPage/>
<Spawnflags/>
<Monsters/>