<script>
	import { isLocalManual } from '$lib/is-local-manual';

	const allowedSizes = ['xs', 'sm', 'md', 'lg', 'xl'];
	/** @type {{maxSize?: string, scrollable?: boolean, children?: import('svelte').Snippet}} */
	let { maxSize = 'lg', scrollable = true, children } = $props();
	let noscrollClass = isLocalManual() ? 'container-noscroll-nonav' : 'container-noscroll';
</script>
<div
	class="container {!scrollable?noscrollClass:''} {maxSize !== 'none' ? (allowedSizes.includes(maxSize) ? `grid-${maxSize}` : 'grid-xl') : ''}"
	style="">{@render children?.()}</div>