<script>
	import Page from '$components/Page.svelte';
	import Columns from '$components/Columns.svelte';
	import Column from '$components/Column.svelte';
	import ManualNav from '../ManualNav.svelte';
	import { singlePage } from '$lib/context.js';
	singlePage.set(true)
</script>
<Page maxSize="none" scrollable={false}>
	<Columns>
		<Column col="2" scrollable>
			<ManualNav/>
		</Column>
		<Column col="1" classes="divider-vert"/>
		<Column col="9" scrollable>
			<slot></slot>
		</Column>
	</Columns>
</Page>