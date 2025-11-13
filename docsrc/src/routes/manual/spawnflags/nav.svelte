<script>
import ManualNavLink from "../ManualNavLink.svelte";
 let {singlePage = false} = $props();

console.log(`spawnflagnav singlePage: ${singlePage}`);
</script>
<ManualNavLink page="/manual/spawnflags" tag="#spawnflags" tagOnly={singlePage}>Spawnflags</ManualNavLink>
<ManualNavLink page="/manual/spawnflags" tag="#spawnflags-trigger-spawn" tagOnly={singlePage} indent={1}>Trigger Spawned Monsters</ManualNavLink>
<ManualNavLink page="/manual/spawnflags" tag="#spawnflags-appearance-flags" tagOnly={singlePage} indent={1}>Appearance Flags</ManualNavLink>