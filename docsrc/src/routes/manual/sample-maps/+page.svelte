<script>
	import Content from "./content.svelte";
	import { manualTitle } from '../manual-title.js';
</script>

<svelte:head>
	<title>{manualTitle('Sample Maps')}</title>
</svelte:head>

<Content />
