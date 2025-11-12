<script>
    /** @type {{children?: import('svelte').Snippet, page?: string, tag: string, text?: string, tagOnly?: boolean, indent?: number}} */
    let {page, tag, text, tagOnly, indent = 0, children} = $props();
</script>

<li class="manual-indent-{indent}"><a href="{!tagOnly ? page : ''}{tag}">{#if children}
    {@render children()}
{:else}
    {text}
{/if}</a></li>