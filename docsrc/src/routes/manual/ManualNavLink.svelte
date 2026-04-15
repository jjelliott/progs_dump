<script>
	/* eslint svelte/no-navigation-without-resolve: "off"*/
	import { resolve } from '$app/paths';
	import { singlePage } from '$lib/context.js';

	/**
	 * @type {{
	 * children?: import('svelte').Snippet,
	 * page?: string,
	 * tag: string,
	 * text?: string
	 * }}
	 */
	let { page, tag, text, children } = $props();
</script>

<a href={`${singlePage.get() ? "" : resolve(page)}${tag}`}>
	{#if children}
		{@render children()}
	{:else}
		{text}
	{/if}
</a>