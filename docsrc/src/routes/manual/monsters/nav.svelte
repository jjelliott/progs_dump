<script>
    import ManualNavLink from "../ManualNavLink.svelte";
    let {singlePage} = $props();
</script>
<ManualNavLink page="/manual/monsters" tag="#monsters" tagOnly={singlePage}>Monsters</ManualNavLink>
<ManualNavLink page="/manual/monsters" tag="#monster-behavior-keys" tagOnly={singlePage} indent={1}>Behavior Modifiers</ManualNavLink>
<ManualNavLink page="/manual/monsters" tag="#monsters-infighting-system" tagOnly={singlePage} indent={1}>Infighting System</ManualNavLink>
