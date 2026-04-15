<script lang="ts">
	import favicon from '$lib/assets/favicon.svg';
	import '$lib/assets/pd.css';
	import Page from '$components/Page.svelte';
	import Columns from '$components/Columns.svelte';
	import Column from '$components/Column.svelte';
	import ManualNav from './manual/ManualNav.svelte';
	import { singlePage } from '$lib/context';
	import MainNav from './MainNav.svelte';
	import { isLocalManual } from '$lib/is-local-manual';

	let { children } = $props();
	if (isLocalManual()){
		singlePage.set(true)
	}
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>
{#if isLocalManual()}
	<Page maxSize="none" scrollable={false}>
		<Columns>
			<Column col="2" scrollable>
				<ManualNav/>
			</Column>
			<Column col="1" classes="divider-vert"/>
			<Column col="9" scrollable>
				{@render children()}
			</Column>
		</Columns>
	</Page>
{:else}
<MainNav>
	{@render children()}
</MainNav>
{/if}

