<script>
	import { PUBLIC_BUILD_TARGET } from '$env/static/public';
	import SinglePageManual from './manual/single/SinglePageManual.svelte';
	import Image from '$components/Image.svelte';
	import pdLogo from '$lib/assets/pd_logo.png';
</script>

{#if PUBLIC_BUILD_TARGET === 'manual'}
	<SinglePageManual />
{:else}
<div class="columns">
	<div class="column col-4 col-mx-auto">
		<Image src={pdLogo} alt="progs_dump logo"/>
	</div>
</div>
	{/if}