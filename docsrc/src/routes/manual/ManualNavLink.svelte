<script>
	/* eslint svelte/no-navigation-without-resolve: "off"*/
	import { resolve } from '$app/paths';

	/**
	 * @type {{
	 * children?: import('svelte').Snippet,
	 * page?: string,
	 * tag: string,
	 * text?: string,
	 * tagOnly?: boolean,
	 * indent?: number
	 * }}
	 */
	let { page, tag, text, tagOnly = false, indent = 0, children } = $props();

</script>

<li class="manual-indent-{indent}">
	<a href={`${tagOnly ? "" : resolve(page)}${tag}`}>
		{#if children}
			{@render children()}
		{:else}
			{text}
		{/if}
	</a>
</li>