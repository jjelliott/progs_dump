<script>
    import Divider from "$components/Divider.svelte";
    import Page from "$components/Page.svelte";
    import Card from "$components/Card.svelte"
    import CardHeader from "$components/CardHeader.svelte"
    import CardBody from "$components/CardBody.svelte"
    import Columns from "$components/Columns.svelte"
    import Column from "$components/Column.svelte"
</script>
<Page>
    <h1>What is progs_dump?</h1>
    <p>progs_dump is a development kit for id software’s Quake. Its purpose is to give mappers more creative options and
        “quality-of-life” improvements over the original “vanilla” version of the game. The progs_dump dev kit has
        dozens of unique and powerful features that are explained in this manual, in the FGDs and in the included sample
        maps.</p>

    <p>The best way to get an overview of all these features is to load up the start map and play through the short
        sample levels. Only a few of these have monsters and not every feature is shown but the majority are.</p>
    <Card>
        <div class="card-image">
            <img style="width:100%" alt="start map picture" src="/what-is-it/startmap.png"/>
        </div>
        <div class="card-footer">Many maps demonstrating the new features are available from the start map.</div>
    </Card>
    <Divider/>

    <h2>The devkit consists of two elements:</h2>

    <p>First, there’s the progs_dump “mod” folder. This holds all the sample maps, mapping assets, source code and the
        documentation you are reading now.</p>

    <p>The second element is the my_mod folder inside the mod_template.zip file. This is a streamlined version of
        progs_dump with just the assets you need to make your mod.</p>
    <Divider/>
    <h2>The workflow is simple:</h2>

    Use the progs_dump mod as a reference and learning tool, then create your own Quake mod with the my_mod folder as a
    base.
    <Columns>
        <Column col="8" xl="12" mxAuto="true">
            <Card color="warning">
                <CardBody>Your project should be released as a stand-alone mod and installed into its own
                    folder in the Quake directory, NOT in progs_dump.
                </CardBody>
            </Card>
        </Column>
    </Columns>

    <Divider/>
    <h2>What can you do with progs_dump?</h2>
    The devkit started as a simple project to add custom sounds and models to the game but has grown into a powerful
    toolkit aimed at beginner and intermediate mappers. Most features are from existing mods both old and recent, but
    there is a lot of new and unique code as well.
    <Divider/>
    <h2>Features include:</h2>
    <Card>
        <CardHeader>Monster Customization</CardHeader>
        <CardBody>
            No other Quake mod allows this amount of customization in such an easy way.
            <ul>
                <li>Add custom sounds, skins, models, health, damage, names, obituaries and much more without any coding
                    required. This includes customizing monsters’ heads, gibs and projectiles.
                </li>
                <li>Grunts, Enforcers, Shamblers, Hellknights and Ogres have multiple new attack options</li>
                <li>Killable, gibbable versions of the original Quake bosses</li>
                <li>Rotfish even gib</li>
            </ul>
        </CardBody>
    </Card>
    <Card>
        <CardHeader>
            Quality-of-Life Features
        </CardHeader>
        <CardBody>
            <ul>
                <li>Trigger spawned monsters</li>
                <li>continuous monster spawning</li>
                <li>random monster spawning</li>
                <li>Respawn items and suspend them in mid-air</li>
                <li>Custom backpack pickups</li>
                <li>drag and drop gore decorations</li>
                <li>create visual effects like explosions and lightning effects</li>
                <li>Custom models, sprites and sound effects</li>
                <li>Multiple targets and targetnames</li>
                <li>dormant triggers</li>
                <li>enhanced platforms</li>

                <li>Unique new features like trigger_look, sight_trigger, pain_target, Doom-style door behaviors and
                    item_key_custom.
                </li>

                <li>Mission pack additions like custom gravity triggers, rotating entities, candles and proper
                    elevators.
                </li>

                <li>Enhanced teleporters with random destinations, monster only options, changeable destinations and
                    more.
                </li>

                <li>ladders</li>
                <li>cutscenes</li>
                <li>breakables with an “easy” method and a completely “custom” method.</li>

                <li>Noclip enables notarget and ignores most touch events</li>
            </ul>
        </CardBody>
    </Card>
    <Card>
        <CardHeader>Bug fixes</CardHeader>
        <CardBody>
            Traditional fixes to the Shambler’s collision during combat, the Rotfish “kill count” bug, door unlock
            sounds and many more “under-the-hood” code fixes. This includes fixes to the mission packs QuakeC as well.
            <br/>
            <br/>
            In version 3.0.0 we’ve included most of the Quake Info Pool fixes as well.
        </CardBody>
    </Card>
</Page>