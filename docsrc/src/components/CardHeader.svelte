<script>
    /** @type {{children?: import('svelte').Snippet}} */
    let { children } = $props();
</script>

<div class="card-header">
    <div class="card-title h5">
        {@render children?.()}
    </div>
</div>