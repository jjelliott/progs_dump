<script>
    /** @type {{color?: string, classes?: string, children?: import('svelte').Snippet}} */
    let { color = "", classes = "", children } = $props();
</script>
<div class="card my-2 {color ? `bg-${color}` : ''} {classes}">
    {@render children?.()}
</div>