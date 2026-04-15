<script>
	/* eslint svelte/no-navigation-without-resolve: "off"*/
	import ManualNavLink from './ManualNavLink.svelte';

	/**
	 * @type {{
	 * children?: import('svelte').Snippet,
	 * page?: string,
	 * tag: string,
	 * text?: string,
	 * indent?: number
	 * }}
	 */
	let { indent = 0, ...rest } = $props();
</script>

<li class="manual-indent-{indent}">
	<ManualNavLink {...rest}/>
</li>