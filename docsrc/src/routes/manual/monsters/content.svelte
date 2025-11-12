<script>
    import Card from "$components/Card.svelte";
    import CardBody from "$components/CardBody.svelte";
    import Image from "$components/Image.svelte";
    import TextSection from "$components/TextSection.svelte";
</script>
<h1 id="monsters">Monsters</h1>
<Card color="warning">
    <CardBody>
        Some of the new features in progs_dump can drastically change the way the game
        plays. Always use proper game design principles and communicate to the player that
        there is something different than they might expect.
    </CardBody>
</Card>
<Image src="/monsters/header-image.png" alt="picture of a shambler"/>
<TextSection>
    Starting with version 2.x.x, progs_dump focuses heavily on monster customization. There are a
    lot of new key | values that can seem overwhelming at first glance. To make things easier to
    digest, the new features can be broken down into three categories: behavior mods, models and
    sounds.
</TextSection>
<TextSection>
    When creating a custom monster, think of it as giving that monster a costume. You change their
    appearance with a compatible model and / or a skin. Change their “voice” with new sounds.
    Then disguise their attacks with projectile models, sound effects and behavior modifiers like
    custom projectile speeds and damage modifiers. There are dozens of replacement monster
    models, skins and sounds from various Quake mods dating back nearly 25 years. Info on where
    to find them is in Appendix B.
</TextSection>
<Image src="/monsters/grunt-example.png" alt="group of customized grunts"/>
<Card color="error">
    <CardBody>
        It’s important to note the limitations of monster customization before getting started:
    </CardBody>
</Card>
<ol>
    <li>
        To use a custom monster model, it must include the same number of animation frames in
        the same order as the monster you are using as a base. Don’t worry though, there are
        many “replacement” models and skins available. See Appendix B for info.
    </li>
    <li>Custom monster sounds should be roughly the same duration as the original monster
        sounds you are using as a base.
    </li>
    <li>
        The “rate of fire” for a custom monster cannot be changed but the damage dealt and
        projectile speeds can be! Also, all monster projectiles can be set to homing to behave
        like Vore Balls.
    </li>
    <li>
        The Shambler’s lightning bolts cannot be replaced.
    </li>
    <li>
        progs_dump only comes with a handful of built-in models to keep the distribution size to
        a minimum. You will have to provide custom models yourself.
    </li>
</ol>
<TextSection>
    For more info, check out our sections on built-in assets and where to find custom models.
</TextSection>
<TextSection>
    Even with these limitations, you can create a large variety of monsters that feel unique. Also,
    progs_dump has a simple “plug-in” system where you will be able to download pre-made
    monsters to add to your mods.
</TextSection>
<h2 id="monster-behavior-keys">Behavior Modifiers</h2>
<TextSection>
    Use the following key | values to change health, damage, spawn times, visual effects and more.
</TextSection>
<table class="table">
    <thead>
        <tr>
            <th>Key</th>
            <th>Details</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>berserk</td>
            <td>
                <TextSection>Skips certain pain animations similar to skill 3.</TextSection>
                <TextSection>e.g. The Enforcer will not stumble after
                    taking damage.
                </TextSection>
                <ul>
                    <li>0: Off (Default)</li>
                    <li>1: Berserk (skip pain animations)</li>
                </ul>
                <TextSection>Excludes Bosses, Zombies and Spawn.</TextSection>
            </td>
        </tr>
        <tr>
            <td>damage_mod</td>
            <td>
                Multiply all damage from this monster by this number (e.g. 4 = Quad damage, 0.5 = half damage)
            </td>
        </tr>
        <tr>
            <td>delay</td>
            <td>
                <TextSection>
                    The delay key allows you to add a custom delay to each trigger spawn. Normally, multiple targets will spawn simultaneously. If you want to stagger the time each monster enters the map, add a delay.
                </TextSection>
                <TextSection>
                    Use the drop down menu to select some predefined values or enter a custom value in seconds if you need a specific time set.
                </TextSection>
            </td>
        </tr>
        <tr>
            <td>drop_item</td>
            <td>
                <ul>
                    <li>0: (Default) Disabled</li>
                    <li>1: Drop a Silver Key upon death</li>
                    <li>2: Drop a Gold Key upon death</li>
                    <li>3: Drop a Health Vial upon death</li>
                    <li>4: Drop a Armor Shard upon death</li>
                    <li>5: Drop one vial and one shard</li>
                    <li>6: Drop a random combination of 3 vials and/or shards</li>
                </ul>
                <TextSection>
                    Optional: Use keep_ammo 1 on Grunts, Enforcers or Ogres when this is enabled.
                </TextSection>
            </td>
        </tr>
        <tr>
            <td>effects</td>
            <td>
                <TextSection>Add a visual effect to an entity</TextSection>
                <ul>
                    <li>0: None (Default)</li>
                    <li>1: Brightfield (yellow particles)</li>
                    <li>4: Bright light</li>
                    <li>8: Dim light</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>health</td>
            <td>
                Monsters can have custom health levels.
            </td>
        </tr>
        <tr>
            <td>homing</td>
            <td>
                Enables and acts as a multiplier for homing on non-grenade projectiles. 1 is the maximum (see below for details)
            </td>
        </tr>
        <tr>
            <td>waitmin</td>
            <td>
                When set, homing factor will begin to increase after this many seconds (see below for details)
            </td>
        </tr>
        <tr>
            <td>infight_mode</td>
            <td>
                See more info below
            </td>
        </tr>
        <tr>
            <td>keep_ammo</td>
            <td>
                Stop Ogres, Grunts and Enforcers from dropping backpack ammo by setting to 1. Covered in this video.
            </td>
        </tr>
        <tr>
            <td>obit_name</td>
            <td>
                <TextSection>
                    Custom description of WHO killed the player. When used with obit_method, this will set part of the text for a custom obituary.
                </TextSection>
                <TextSection>
                    e.g. a Super Soldier!
                </TextSection>
            </td>
        </tr>
        <tr>
            <td>obit_method</td>
            <td>
                <TextSection>
                    Custom description of HOW this monster killed the player. When used with obit_name, will set part of the text for a custom obituary.
                </TextSection>
                <TextSection>
                    e.g. eviscerated - If empty, defaults to killed.
                </TextSection>
                <TextSection>
                    Using the examples above, the obituary would read: "Player was eviscerated by a Super Soldier!"
                </TextSection>
            </td>
        </tr>
        <tr>
            <td>pain_target</td>
            <td>
                see description below
            </td>
        </tr>
        <tr>
            <td>pain_threshold</td>
            <td>
                see description below
            </td>
        </tr>
        <tr>
            <td>proj_speed_mod</td>
            <td>
                Multiplier for custom projectile speed (see below)
            </td>
        </tr>
        <tr>
            <td>sight_trigger</td>
            <td>
                Set sight_trigger to 1 to have monsters trigger targets when they see the player. This means they can not trigger an event upon their death. You can still use pain_targets. Covered in <a href="https://youtu.be/RnJQc1WldF0">this video</a>.
            </td>
        </tr>
        <tr>
            <td>spawn_angry</td>
            <td>
                <TextSection>Only when trigger spawned:</TextSection>
                <ul>
                    <li>0 default behavior - not angry</li>
                    <li>1 set to 1 to spawn angry at player</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>
<h2 id="monsters-infighting-system">Infighting System</h2>
<TextSection>
    Monsters have an <em>infight_mode</em> key that affects how they will act toward other monsters. Now
    mappers have much more control and can even trigger specific fights using a <em>misc_infight</em> entity.
    Keep in mind that in the original game Grunts (monster_army) always infight and that is still the
    default in <em>progs_dump</em>.
</TextSection>
<table class="table">
    <thead>
        <tr>
            <th>Selection</th>
            <th>Details</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>-1</td>
            <td>Never infight</td>
        </tr>
        <tr>
            <td>0</td>
            <td>Default behavior, only infight with different classnames</td>
        </tr>
        <tr>
            <td>1</td>
            <td>Infight with monsters with the same classname but different <em>mdl_body</em></td>
        </tr>
        <tr>
            <td>2</td>
            <td>Infight with monsters with the same classname but different <em>skin</em></td>
        </tr>
        <tr>
            <td>3</td>
            <td>Infight no matter what</td>
        </tr>
    </tbody>
</table>