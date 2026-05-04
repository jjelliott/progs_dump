<script>
	import Column from './Column.svelte';
	import Columns from './Columns.svelte';

	/** @type {{ margin?: number, children: import('svelte').Snippet }} */
	let {
		margin = 1, // Default to 1 (which results in col-10)
		children
	} = $props();

	// Constraint: ensure margin is between 0 and 4
	let safeMargin = $derived(Math.max(0, Math.min(margin, 4)));

	// Calculate the width of the center column
	// Margin 1 -> col 10
	// Margin 2 -> col 8
	// Margin 4 -> col 4
	let centerColSize = $derived(12 - (safeMargin * 2));
</script>

<Columns>
	<Column col={centerColSize} mxAuto={true}>
		<div class="auto-grid">
			{@render children?.()}
		</div>
	</Column>
</Columns>

<style>
  .auto-grid {
    display: grid;
    grid-auto-flow: column;
    grid-auto-columns: minmax(0, 1fr);
    gap: 1rem;
    width: 100%;
    align-items: stretch;
  }

  .auto-grid :global(img) {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
  }

  .auto-grid :global(> *) {
    min-width: 0;
  }
</style>