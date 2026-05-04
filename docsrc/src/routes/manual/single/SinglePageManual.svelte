<script>
	import WhatIsIt from '../..//what-is-it/content.svelte';
	import InstallPage from '../content.svelte';
	import Spawnflags from '../spawnflags/content.svelte';
	import Monsters from '../monsters/content.svelte';
	import ItemsContent from '../items/content.svelte';
	import SoundsContent from '../sounds/content.svelte';
	import ModelsContent from '../models/content.svelte';
	import TriggersContent from '../triggers/content.svelte';
	import PlatformsContent from '../platforms/content.svelte';
	import EntitiesContent from '../entities/content.svelte';
	import LaddersContent from '../ladders/content.svelte';
	import BreakablesContent from '../breakables/content.svelte';
	import EffectsContent from '../effects/content.svelte';
	import TextToolsContent from '../text-tools/content.svelte';
	import CutscenesContent from '../cutscenes/content.svelte';
	import RotationContent from '../rotation/content.svelte';
	import SampleMapsContent from '../sample-maps/content.svelte';
	import CreditsContent from '../appendicies/content.svelte';
	import { manualTitle } from '../manual-title.js';
	import { isLocalManual } from '$lib/is-local-manual.js';
	import Divider from '$components/Divider.svelte';
</script>

<svelte:head>
	<title>{manualTitle()}</title>
</svelte:head>
{#if isLocalManual()}
		<WhatIsIt/>
		<Divider/>
	{/if}

<InstallPage/>

<Divider/>
<Spawnflags/>

<Divider/>
<Monsters/>

<Divider/>
<ItemsContent/>

<Divider/>
<SoundsContent/>

<Divider/>
<ModelsContent/>
<Divider/>
<TriggersContent/>
<Divider/>
<PlatformsContent/>
<Divider/>
<EntitiesContent/>
<Divider/>
<LaddersContent/>
<Divider/>
<BreakablesContent/>
<Divider/>
<EffectsContent/>
<Divider/>
<TextToolsContent/>
<Divider/>
<CutscenesContent/>
<Divider/>
<RotationContent/>
<Divider/>
<SampleMapsContent/>
<Divider/>
<CreditsContent/>
