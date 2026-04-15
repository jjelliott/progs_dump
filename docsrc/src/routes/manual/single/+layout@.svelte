<script>
	import SinglePageManualLayout from './SinglePageManualLayout.svelte';
	let {children} = $props();
</script>

<SinglePageManualLayout>
	{@render children()}
</SinglePageManualLayout>