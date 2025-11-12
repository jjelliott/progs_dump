<script>
    import ManualNavLink from "./ManualNavLink.svelte";
    import SpawnflagNav from "./spawnflags/nav.svelte"
    import MonstersNav from "./monsters/nav.svelte";

    let {singlePage = false} = $props();
</script>

<nav>
    <ul style="list-style: none">
        <ManualNavLink page="/manual" tag="#installation" tagOnly={singlePage}>Installation</ManualNavLink>
        <ManualNavLink page="/manual" tag="#dev-notes" tagOnly={singlePage} indent={1}>Development Notes</ManualNavLink>
        <SpawnflagNav singlePage/>
        <MonstersNav singlePage/>
    </ul>
</nav>