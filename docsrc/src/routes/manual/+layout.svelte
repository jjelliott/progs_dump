<script>
    import Page from "$components/Page.svelte"
    import Columns from "$components/Columns.svelte"
    import Column from "$components/Column.svelte"
    import ManualNav from "./ManualNav.svelte";
</script>
<Page maxSize="none" scrollable={false}>
<Columns>
    <Column col="2">
        <ManualNav></ManualNav>
    </Column>
    <Column col="1" classes="divider-vert"/>
    <Column col="9">
        <slot></slot>
    </Column>
</Columns>
</Page>