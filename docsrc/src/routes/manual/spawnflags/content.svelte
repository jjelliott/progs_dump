<script>
    import TextSection from "$components/TextSection.svelte";
    import Divider from "$components/Divider.svelte";
    import Column from "$components/Column.svelte";
    import Columns from "$components/Columns.svelte";
    import Card from "$components/Card.svelte";
    import CardBody from "$components/CardBody.svelte";
</script>

<h1 id="spawnflags">Spawnflags</h1>
<Divider/>
<TextSection>
    <h4 id="spawnflags-trigger-spawn">Trigger Spawned Monsters</h4>
    The most requested feature of any general purpose Quake mod is trigger spawned monsters. This makes spawning
    monsters much easier than in the original game. All you need to do is select the Trigger Spawn flag and target the
    monster with any trigger when you want them to appear. Ambush (from vanilla Quake), will prevent the selected
    monster from being “awakened” by other monsters nearby. Errant gunfire or seeing the player will wake them up. No
    Sight Sound will suppress the monster’s “wake up” sound. (e.g. a Shambler will not roar when it sees the player.)
    You can make passive monsters that will never respond to the player’s actions by selecting Passive always or allow
    them to wake up and fight with the Passive until attacked spawnflag.
    <br/>
    <br/>
    Starting in version 3.0.0 use the Spawn Silently flag to suppress visual and sound effects when a monster trigger
    spawns. In previous versions, this was enabled with the wait 1 key | value pair. This will still work but has been
    removed from the FGDs.

</TextSection>
<Divider/>
<TextSection>
    <h4 id="spawnflags-appearance-flags">Appearance Flags</h4>
    Nearly every entity in the devkit has an expanded set of “Appearflags” compared to vanilla Quake. These new flags
    allow you to customize what shows up in a specific mode of the game.

    <Columns>
        <Column col="1" classes="text-right">4096</Column>
        <Column col="11">Not in Coop</Column>
    </Columns>
    <Columns>
        <Column col="1" classes="text-right">8192</Column>
        <Column col="11"> Not in Single Player</Column>
    </Columns>
    <Columns>
        <Column col="1" classes="text-right">32768</Column>
        <Column col="11"> Not on Hard Only</Column>
    </Columns>
    <Columns>
        <Column col="1" classes="text-right">65536</Column>
        <Column col="11">Not on Nightmare Only</Column>
    </Columns>
    Spawnflag 16384 is not used here because it's already used for something else in progs_dump.
    <br/>
    <br/>

    The new spawnflags complement and complete the set of built-in spawnflags provided by the engine, which of course
    are:

    <Columns>
        <Column col="1" classes="text-right">256</Column>
        <Column col="11">Not on Easy</Column>
    </Columns>
    <Columns>
        <Column col="1" classes="text-right">512</Column>
        <Column col="11">Not on Normal</Column>
    </Columns>
    <Columns>
        <Column col="1" classes="text-right">1024</Column>
        <Column col="11"> Not on Hard or Nightmare</Column>
    </Columns>
    <Columns>
        <Column col="1" classes="text-right">2048</Column>
        <Column col="11">Not in Deathmatch</Column>
    </Columns>


    In conjunction with the old spawnflags, the new spawnflags make it possible to exclude any entity from any
    combination of game modes and/or skill levels.
</TextSection>
<Card>
    <CardBody>
        <TextSection>
            <h5><em>Not in Coop</em> and <em>Not in Single Player</em></h5>

            <p>These spawnflags were inspired by Quoth 2 (Kell and Necros, 2008), which included two additional spawnflags for
                all entities: Not in Coop and Coop Only.</p>
            <p>In contrast to Quoth 2, the spawnflags implemented here are Not in Coop and Not in Single Player, for symmetry
                with the built-in Not in Deathmatch spawnflag.</p>
        </TextSection>
        <Divider/>
        <TextSection>
            <h5><em>Not on Hard Only</em> and <em>Not on Nightmare Only</em></h5>

            <p>The set of built-in spawnflags doesn't allow a mapper to treat the Hard and Nightmare skill levels differently,
                because it only includes one spawnflag, 1024, which excludes an entity from both Hard and Nightmare. </p>
            <p>The new Not on Hard Only and Not on Nightmare Only spawnflags allow the mapper to exclude an entity from one of
                these skill levels without affecting the other.</p>
            <p> The original spawnflag will supersede the new flags.</p>
        </TextSection>
    </CardBody>
</Card>