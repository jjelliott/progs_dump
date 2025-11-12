<script>
import Card from "$components/Card.svelte";
import CardBody from "$components/CardBody.svelte";
</script>

<h1 id="installation">Installation</h1>

<Card classes="bg-warning">
    <CardBody>
        Do not copy new versions of progs_dump over existing installations. It’s always best to make a new folder and
        move any work-in-progress maps and assets there.
    </CardBody>
</Card>
<ol>
    <li>
        Unzip the <em>progs_dump</em> archive into your Quake folder. This will create a <em>pd_300</em> folder inside.
        This directory will be a learning tool and reference for the features of the dev kit. Play it like any other
        Quake mod using the start map to explore a hub with sample maps.
        <br/>
        The <a href="/manual/devfolder">development folder</a> contains the FGD and DEF files that allow JACK,
        TrenchBroom and other editors to use the features of the devkit. Please refer to your map editor documentation
        for information on how to load mods and FGD files. In addition, there is a wad file that you can use to load the
        textures used in the sample maps. The QuakeC source code is included as well.
    </li>
    <Card classes="bg-error">
        <CardBody>
            Please read progs_dump-3.0.0-README.txt for important info and any last minute changes.
        </CardBody>
    </Card>

    <li>
        When you are ready to create your own mod, unzip the <em>mod_template.zip</em> into your Quake directory and
        rename the <em>my_mod</em> folder to the name of your mod (lowercase with no spaces). This folder is a stripped
        down version of <em>progs_dump</em> without the sample maps and other files. However, the new models, sounds,
        sprites, progs.dat and QuakeC source code are included.
    </li>

    <li>
        When you are ready to release your mod, zip up your mod directory and make sure to include the <em>progs_dump-devkit-readme.txt</em>
        file and the QuakeC source folders in your release. If you modify the QuakeC code, make sure and include that
        version in your zip instead of the original QuakeC files.
    </li>
    <Card color="warning">
        <CardBody>
            Remove any cfg files, screenshots or save game files before zipping up your mod folder!
        </CardBody>
    </Card>
    <li>
        Please do not include the original <em>progs_dump</em> sample maps in your mod. But feel free to use the entity
        setups from the samples and prefab maps in your own projects. e.g. particle effects or custom monster entities.
    </li>

    <li>
        Make sure and share your work on the progs_dump dev Discord.
    </li>
</ol>
Good luck and happy modding!
<br/>
<br/>
<h3 id="dev-notes">Development Notes</h3>
<ul>
    <li>You can launch Quake with <em>-nomonsters</em> on the command line to disable monsters in your map for testing. You can also set
        <em>nomonsters</em> to 1 in the console and enter <em>restart</em> to relaunch your current map without monsters.</li>
    <li>To check what version of the dev kit you are running, type <em>impulse 100</em> in the console.</li>
    <li>While using the <em>noclip</em> command, you will not collide with item pickups and many triggers.</li>
    <li>The cheat code <em>impulse 9</em> will give the player any <a href="/manual/keys">custom keys</a> used in the current map in addition to all ammo, weapons and standard keys.</li>
    <li>Triggers that feature the <em>message</em> key have a new spawnflag <em>Message All Players</em>. This is useful for co-op gameplay if it’s important that every player get the message.</li>
    <li>The FGDs are not included in the my_mod folder since they aren’t required to play your mod. For more info on loading FGDs, refer to the documentation for your editor of choice.</li>
</ul>