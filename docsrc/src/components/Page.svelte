<script>
    const allowedSizes = ["xs", "sm", "md", "lg", "xl"];
    /** @type {{maxSize?: string, scrollable?: boolean, children?: import('svelte').Snippet}} */
    let { maxSize = 'lg', scrollable = true, children } = $props();
</script>
<div class="container {!scrollable?'container-noscroll':''} {maxSize !== 'none' ? (allowedSizes.includes(maxSize) ? `grid-${maxSize}` : 'grid-xl') : ''}"
style="">{@render children?.()}</div>