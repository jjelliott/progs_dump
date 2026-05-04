<script>
	import Column from '$components/Column.svelte';
	import Columns from '$components/Columns.svelte';
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image102 from '$lib/assets/manual/entities/entities-lightning-entities-01.png';
	import image108 from '$lib/assets/manual/entities/entities-func-fall2-01.png';
	import image109 from '$lib/assets/manual/entities/entities-monster-dead-classname-01.png';
	import image142 from '$lib/assets/manual/entities/entities-target-autosave-01.png';
	import image22 from '$lib/assets/manual/entities/entities-gib-classname-01.png';
	import image36 from '$lib/assets/manual/entities/entities-lightning-entities-02.png';
	import image4 from '$lib/assets/manual/entities/entities-lightning-entities-03.png';
	import image42 from '$lib/assets/manual/entities/entities-gib-classname-02.png';
	import image72 from '$lib/assets/manual/entities/entities-gib-classname-03.png';
	import image76 from '$lib/assets/manual/entities/entities-func-fall2-02.png';
	import image79 from '$lib/assets/manual/entities/entities-func-laser-01.png';
	import image106 from '$lib/assets/manual/entities/entities-misc-modeltrain-01.png';
	import image113 from '$lib/assets/manual/entities/entities-func-train-01.png';
	import image28 from '$lib/assets/manual/entities/entities-func-train-02.png';
	import image35 from '$lib/assets/manual/entities/entities-misc-modeltrain-02.png';
	import image68 from '$lib/assets/manual/entities/entities-misc-modeltrain-03.png';
	import image77 from '$lib/assets/manual/entities/entities-func-train-03.png';
</script>

<h1 id="h.g4rwbqia76su">Other Enhanced Entities</h1>

<h2 id="h.s2gkjq1fk2l0">Shooters</h2>

<TextSection>The original trap_spikeshooter shot only nails and lasers. All three of these entities can now shoot lavaballs, rockets, Voreballs, grenades or gibs. Set the spawnflag accordingly. Use the silent spawnflag if needed. Use the key state 0 for initially off, 1 initially on. (0 default) Refer to the table below for specifics on how to trigger these.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Entity</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>trap_spikeshooter</p>
		</td>
		<td>
			<p>use a trigger_mulitple to fire</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>trap_shooter</p>
		</td>
		<td>
			<p>fires continuously (use killtarget to stop)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>trap_shooter_switched</p>
		</td>
		<td>
			<p>toggle on and off with triggers, buttons</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.ltpe6uekce8h">func_counter</h2>

<TextSection>This is used to trigger things in a series. You can do some amazing new game play setups with these. Make sure and take some time to play with this one and take a look at the pd_counter sample map.</TextSection>

<TextSection>TOGGLE causes the counter to switch between an on and off state each time the counter is triggered. LOOP causes the counter to repeat infinitely. The count resets to zero after reaching the value in count. STEP causes the counter to only increment when triggered. Effectively, this turns the counter into a relay with counting abilities. RESET causes the counter to reset to 0 when restarted. RANDOM causes the counter to generate random values in the range 1 to count at the specified interval. FINISHCOUNT causes the counter to continue counting until it reaches count before shutting down even after being set to an off state. START_ON causes the counter to be on when the level starts. count specifies how many times to repeat the event. If LOOP is set, it specifies how high to count before resetting to zero. Default is 10. wait the length of time between each trigger event. Default is 1 second. delay how much time to wait before firing after being switched on. You can see func_counter in action when the sarcophagi burst open in pd_zombies.map and when used to animate the particle fields in pd_ladders.map.</TextSection>

<h2 id="h.2vb97qjurk2q">func_oncount</h2>

<TextSection>For use as the target of a func_counter. When the counter reaches the value set by count, func_oncount triggers its targets. count specifies the value to trigger on. Default is 1. delay how much time to wait before firing after being triggered. You can see func_oncount in action when the sarcophagi burst open in pd_zombies.map and when used to animate the particle fields in pd_ladders.map.</TextSection>

<h2 id="h.lyfql1jo1xoi">func_door</h2>

<TextSection>Setting cnt to 1 will not remove keys from the player's inventory, which mimic's the key behavior of Doom. Make sure and add this key / value to all doors and let the player know the default key behavior has changed. e.g. Perhaps a pickup message on the key that reads: "This key works on many doors."</TextSection>

<TextSection>Usually, key doors will remain open after use. However, func_door has a new spawnflag called Doom-style unlock that will close the door after unlocking it. Setting this spawnflag will set the door to cnt 1 automatically, retaining the key in the player's inventory.</TextSection>

<h2 id="h.k2hqwi546bjk">func_explobox</h2>

<TextSection>An explosive brush entity. Works just like misc_explobox but is made from a brush you create as opposed to the default model.</TextSection>

<h2 id="h.pgxv9ggpvtkd">func_fall</h2>

<TextSection>A brush that drops and fades away when touched and/or triggered. Add some spice to your jumping puzzles or other scripted sequences! Monsters will not trigger func_fall but will be gibbed if one falls on them. noise = sound to play when triggered, the default is a switch sound. wait = wait this long before falling. Use the DONT_FADE spawnflag if desired.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>When a func_fall brush touches another brush or entity it will stop, which can look odd in certain situations.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.6hlbnm76af5m">func_fall2</h2>

<TextSection>This is an enhanced version of func_fall that has different properties than the original and a lot more functionality. For example, func_fall2 will not gib monsters but you can set them to trigger it, unlike the original. These take a bit of set up, so refer to pd_prefab_func_fall2.map for more information and examples you can modify for your maps. Whirledtsar has generously added the Breakable spawnflag in version 3.0.0.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Key</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>wait</p>
		</td>
		<td>
			<p>how long until the brush begins falling</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise</p>
		</td>
		<td>
			<p>the sound to make when touched / activated</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise2</p>
		</td>
		<td>
			<p>the sound to make before it&#x27;s removed, pain_finished of -1 disables noise2 as the object stays forever</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>cnt</p>
		</td>
		<td>
			<p>0 is default behavior, 1 means collisions are disabled while falling, 2 turns the brush into a bouncing entit</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>count</p>
		</td>
		<td>
			<p>Only needed with the Breakable spawnflag. Set the amount of debris you want (default 5)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pain_finished</p>
		</td>
		<td>
			<p>default of 0.01, higher value has the object/brush fade out faster thus in turn affecting how long it stays. -1 stays forever</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed</p>
		</td>
		<td>
			<p>speed as to how fast something falls per game frame, default is 10, higher values mean faster falling. Only for cnt of 1. Recommended to use lip for max fall speed with cnt 0 and 2 as they follow Quake&#x27;s default gravity</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>lip</p>
		</td>
		<td>
			<p>maximum fall speed that can be achieved, caps &#x27;speed&#x27; variable. Default is -800</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>avelocity</p>
		</td>
		<td>
			<p>brush spins when activated using X, Y, Z vector coordinates. cnt of 2 ignores avelocity. Use an origin brush at the center of your brush(es) for proper spin!</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>spawnflags</p>
		</td>
		<td>
			<p>Player or Monster only flags. Also, func_fall2 can be set to Breakable</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>If you need a falling brush to remain solid, use the original func_fall and not func_fall2.</p><p>When the spawnflag is set to Breakable, you can set one of 32 styles from the Style dropdown menu just as with <a href="#h.sn3a95rmwiwd">func_breakable</a>. One key difference is that cnt is already used in func_fall2 for a different function. So set the count key to the amount of debris you want. (default is 5)</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>When using the avelocity key, add an origin textured brush at the point you want the brush to rotate around. This brush must be part of the func_fall2 brush entity. In TrenchBroom you would control click both brushes and then right click to make them a func_fall2.</TextSection>

<TextSection><br /><img src={image108} alt="Manual illustration" style="width: 100%" /><img src={image76} alt="Manual illustration" style="width: 100%" /></TextSection>

<h2 id="h.5o7tm4g7rrcp">func_togglewall</h2>

<TextSection>Creates an invisible wall that can be toggled on and off. START_OFF spawnflag means the wall doesn&#x27;t block until triggered. noise is the sound to play when the wall is turned off. noise1 is the sound to play when the wall is blocking. dmg is the amount of damage to cause when touched. You can see an example of this in the pd_ladders example map above the barred teleport area.</TextSection>

<h2 id="h.vpcr7qliwqsx">func_togglevisiblewall</h2>

<TextSection>A brush model that can be toggled on and off. Behaves much like a traditional func_wall in any other way, but you can target it to toggle visible/invisible. If the entity has a switchable shadow it also toggles. Spawnflag 1 will start the brush off. Spawnflag 2 sets it as non-solid.</TextSection>

<h2 id="h.cxzlg0wt6ot1">func_laser</h2>

<TextSection>A togglable laser, hurts to touch, can be used to block players. START_OFF: Laser starts off. LASER_SOLID: Laser blocks movement while turned on. Keys: dmg damage on touch. default 1 alpha approximate alpha you want the laser drawn at. default 0.5. alpha will vary by 20% of this value. message message to display when activated message2 message to display when deactivated.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Use fullbright textures with func_lasers to ensure they stand out against darker backgrounds. Kreathor's <a href="http://khreathor.xyz/site/prototype/">Prototype wad</a> has a good selection.</p>
		</td>
	</tr>
	</tbody>
</table>

<FullWidthImage src={image79} alt="Manual illustration" />

<h2 id="h.9a1zj46nsfj5">Lightning Entities</h2>

<TextSection>ltrail_start<br />ltrail_relay<br />ltrail_end</TextSection>

<TextSection>These lightning trail entities can be used for traps, decoration or for other scripted events. For the example below there are two entities. ltrail_start and ltrail_end, they are targeting each other.</TextSection>

<Columns>
	<Column col="6">
		<FullWidthImage src={image36} alt="Manual illustration" />
	</Column>
	<Column col="6">
		<FullWidthImage src={image4} alt="Manual illustration" />
	</Column>
</Columns>

<TextSection>If you want a chain of lightning events you would use a number of ltrail_relays between the start and end targeting one to the other, much like you would a path_corner with a func_train.</TextSection>

<TextSection><br /><img src={image102} alt="Manual illustration" style="width: 100%" /></TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>The key / values are weirdly named in these entities. This is a quirk of QuakeC, where coders try to limit the amount of fields used by "recycling" unused fields to save memory.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection><br />ltrail_start Starting point of a lightning trail. Set currentammo to the amount of damage you want the lightning to do. Default is 25. Set frags to the amount of time before the next item is triggered. Default is 0.3 seconds. Set weapon to the amount of time to be firing the lightning. Default is 0.3 seconds. Set sounds to 1 for no sound. (Yes, it is weird.) Set the TOGGLE spawnflag if you want the lightning shooter to continuously fire until triggered again. Set the START ON spawnflag to have the lightning shooter start on. Do NOT use both these spawnflags at once.</TextSection>

<TextSection>ltrail_relay Relay point of a lightning trail. Set currentammo to the amount of damage you want the lightning to do. Default is 25. Set frags to the amount of time before the next item is triggered. Default is 0.3 seconds. Set weapon to the amount of time to be firing the lightning. Default is 0.3 seconds Unfortunately, ltrail_relay entities cannot be set to silent.</TextSection>

<TextSection>ltrail_end Ending point of a lightning trail. Does not fire any lightning. Set frags to the amount of time before the next item is triggered. Default is 0.3 seconds.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>To have a continuously firing bolt between two points, have a ltrail_start and ltrail_end targeting each other in a loop and set frags to -1. The sound this makes is not ideal, so consider making these silent and use a play_sound_triggered with a custom looping sound. This is shown in the pd_lasers sample map. In the devkit, sounds/dump/elec22k.wav is included for this very reason.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.advscgxrvjju">gib_(classname)</h2>

<TextSection>Easily add these bloody decorations to your map. (Also see monster_dead_(classname) below. You can use the SOLID spawnflag to enable collision on the model but clip brushes will work even better.</TextSection>

<FullWidthImage src={image72} alt="Manual illustration" />

<TextSection>If you are using TrenchBroom take extra care when rotating these entities. The way TrenchBroom handles rotations for custom models requires a work around in some cases. If you want to simply rotate the gib model around the z axis there is no problem. However, if you wish to rotate the model in the X and Y or any combination, you will need to manually type in X Y and Z values before using the rotate tool. To do this, use the angles key (with an s) and type in something like 0 45 0 as the values. Then you can select the rotate tool and adjust the other values using the widget. Keep in mind the values 0 0 0 will not work. Also the angle key (no s) should be blank or set to 0 when using the angles key.</TextSection>

<Columns>
	<Column col="6">
		<FullWidthImage src={image42} alt="Manual illustration" />
	</Column>
	<Column col="6">
		<FullWidthImage src={image22} alt="Manual illustration" />
	</Column>
</Columns>

<h2 id="h.y8ko94y30jlo">monster_dead_(classname)</h2>

<TextSection>e.g. monster_dead_ogre More decorations for your maps. You can use the SOLID spawnflag to enable collision on the model but clip brushes will work even better. Keep in mind the same issue with rotation mentioned above applies to these models as well.</TextSection>

<FullWidthImage src={image109} alt="Manual illustration" />

<h2 id="h.tqd9c73nwjmg">Worldspawn</h2>

<TextSection>Features a reset_items key (default 0). Set to 1 to make the player start with the default shotgun and ax. Set to 2 for an ax only start.</TextSection>

<h2 id="h.6uwlmizhv504">light_candle</h2>

<TextSection>A simple light emitting candle from Mission Pack 2. You can place them into the ground for shorter varieties.</TextSection>

<h2 id="h.i6hbftgivtky">target_autosave</h2>

<TextSection>Saves the game when triggered by a player. Never appears in multiplayer. The messages tend to stomp any other prints on screen in most Quake engines, So use a delayed trigger_relay if you fire this from an important pickup or trigger that puts text on screen more important than the autosave blurb.</TextSection>

<FullWidthImage src={image142} alt="Manual illustration" />

<Divider />

<h1 id="h.fkvj8racndab">Train System</h1>

<TextSection>Starting with version 3, progs_dump has reworked trains that offer many more options including the ability to animate models (including monsters) along a series of path_corners, trigger events at path_corners, easier alignment options and more. There are now two train options: func_train and misc_modeltrain. The new system was created by bmFbr based on the Alkaline devkit and the custom alignment feature was added by TheRektafire. See pd_test_trains for an example of these new entities.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>The 3.0.0 version of func_train is incompatible with prior versions of the devkit. The original RETRIGGER spawnflag was 1. It has been reworked and now is spawnflag 2 Move on trigger. In addition, the noise keys have changed and have new functionality.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.i0od93w5tp1e">func_train</h2>

<TextSection>Trains are moving platforms that players, monsters and items can ride on. The target&#x27;s origin specifies the min point of the train at each corner but you can now use an origin brush as part of the train to make alignment easier (see below). The train spawns at the first target it is pointing at. If given a targetname, it&#x27;ll only start moving after triggered. path_corners with a wait -1 value will stop the train. Trigger the func_train again to resume its path. Also, trains can fire other events by using the target2-4 keys. So for example, you could spawn in a monster with target2 when a train arrives at a specific path_corner with a matching targetname2.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Key</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pausetime</p>
		</td>
		<td>
			<p>sets a default waiting time when a value is not defined in path_corners</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed</p>
		</td>
		<td>
			<p>sets the initial moving speed. If the train encounters a path_corner with its &#x27;speed&#x27; field set it will move at that speed afterwards</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise</p>
		</td>
		<td>
			<p>Custom stopping sound (if set, overrides &#x27;sounds&#x27;</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise1</p>
		</td>
		<td>
			<p>Custom moving loop sound (if set, overrides &#x27;sounds&#x27;</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise2</p>
		</td>
		<td>
			<p>Custom corner sound, for when the train crosses a path_corner without stopping)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>sounds</p>
		</td>
		<td>
			<p>0 - silent, 1 - ratchet metal, 1 - base door</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Spawnflags</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Move on trigger</p>
		</td>
		<td>
			<p>will force the train to resume its path when triggered, even when temporarily waiting at a path_corner</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Stop on trigger</p>
		</td>
		<td>
			<p>will stop the train at the next path_corner when triggered. Trigger it again to resume</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Custom alignment</p>
		</td>
		<td>
			<p>allows you to directly specify how the train is offset relative to its path_corners using an &#x27;origin&#x27; brush instead of using the vanilla corner alignment</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Non-Solid</p>
		</td>
		<td>
			<p>collision is disabled</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>The Move on trigger and Stop on trigger flags above are mutually exclusive and will cause an objerror when selected simultaneously.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>Similar to <a href="#h.6hlbnm76af5m">func_fall2</a>, you can add an origin brush to a func_train to change its functionality. In this example, setting the Custom alignment spawnflag uses the origin brush as the "center" of the train as opposed to the mins (corner) of the model.</TextSection>

<FullWidthImage src={image28} alt="Manual illustration" />

<TextSection>On the next page you can see the two different methods to align a train to path corners.</TextSection>

<TextSection>Using an origin brush and the Custom alignment method as seen in-game with r_showbboxes set to 1.</TextSection>

<FullWidthImage src={image77} alt="Manual illustration" />

<TextSection>Using the standard method of aligning via the min corner of the train.</TextSection>

<FullWidthImage src={image113} alt="Manual illustration" />

<h2 id="h.610ttool71yu">path_corner</h2>

<TextSection>These are waypoints for func_train and misc_modeltrain entities. In progs_dump they have additional keys that can alter some settings on those two entities. For example, setting a faster speed key on a path_corner will change the speed of a func_train that arrives there. Many of these new keys are specific to misc_modeltrain.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>If you want to explicitly set frame 0 in any *_frame fields, you must use -1 instead, or else the code understands 0 as a blank field.</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Key</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>animtype</p>
		</td>
		<td>
			<p>Animation type: how to play back frames while stopped at a waypoint</p><p>1 : &quot;One way&quot;</p><p>2 : &quot;Back and forth&quot;</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>animtype2</p>
		</td>
		<td>
			<p>Animation type: how to play back frames while moving between waypoints</p><p>1 : &quot;One way&quot;</p><p>2 : &quot;Back and forth&quot;</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>first_frame</p>
		</td>
		<td>
			<p>First frame of animation while stopped at a waypoint. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>first_frame2</p>
		</td>
		<td>
			<p>First frame of animation while moving between waypoints. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>frtime</p>
		</td>
		<td>
			<p>Speed of animation while stopped at a waypoint</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>frtime2</p>
		</td>
		<td>
			<p>Speed of animation while moving between waypoints</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>last_frame</p>
		</td>
		<td>
			<p>Last frame of animation while stopped at a waypoint. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>last_frame2</p>
		</td>
		<td>
			<p>Last frame of animation while moving between waypoints. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>multiplier</p>
		</td>
		<td>
			<p>Turning speed multiplier. Set to -1 to turn instantly. This setting persists on subsequent waypoints until changed.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise</p>
		</td>
		<td>
			<p>Path to custom stopping sound for this point (e.g soldier/idle.wav)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise2</p>
		</td>
		<td>
			<p>Path to custom corner sound for this point, for when the train crosses a path_corner without stopping (wait -2)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>wait</p>
		</td>
		<td>
			<p>Waiting time at this point.</p><p>A positive value directly sets a waiting time in seconds.</p><p>0 (or not defined) uses the pausetime field value in the func_train (which defaults to 0s).</p><p>-1 makes the train stop at this point until re-triggered</p><p>-2 forces the train to not wait here even when pausetime is set on the func_train.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.j5eqdo3b0yfi">misc_modeltrain</h2>

<TextSection>This works the same way as a func_train, but using external models. This allows you to animate monster models for in-game set pieces or cutscenes.</TextSection>

<TextSection>The model can smoothly orient itself towards the next path_corner when moving. The turning speed is automatic and based on the movement speed, but you can set a multiplier for the turning speed with the multiplier key. Set it to -1 to turn instantly. You can define two different frame ranges and animation speeds, for when the model is stopped and moving. If you don&#x27;t need different stopped/moving animations, only setting first_frame/last_frame/frtime is enough. If you don&#x27;t need any animation at all, just set first_frame to the desired frame and all other fields can go blank.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>If you want to explicitly set frame 0 in any *_frame fields, you must use -1 instead, or else the code understands 0 as a blank field.</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Key</p>
		</td>
		<td>
			<p>Detail</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>cmaxs</p>
		</td>
		<td>
			<p>Upper bounding box point (default is 8 8 8)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>cmins</p>
		</td>
		<td>
			<p>Lower bounding box point (default is -8 -8 -8)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>first_frame</p>
		</td>
		<td>
			<p>First frame of animation while stopped at a waypoint. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>first_frame2</p>
		</td>
		<td>
			<p>First frame of animation while moving between waypoints. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>last_frame</p>
		</td>
		<td>
			<p>Last frame of animation while stopped at a waypoint. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>last_frame2</p>
		</td>
		<td>
			<p>Last frame of animation while moving between waypoints. Use -1 for frame 0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>mdl</p>
		</td>
		<td>
			<p>Path to model file (e.g. progs/soldier.mdl)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>multiplier</p>
		</td>
		<td>
			<p>Turning speed multiplier. Set to -1 to turn instantly. This setting persists until changed by a key set in a path_corner.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise</p>
		</td>
		<td>
			<p>Path to custom stopping sound (e.g soldier/idle.wav) if set, overrides sounds key</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise1</p>
		</td>
		<td>
			<p>Path to custom moving loop sound (if set, overrides sounds key)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise2</p>
		</td>
		<td>
			<p>Path to custom corner sound, for when the train crosses a path_corner without stopping</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed</p>
		</td>
		<td>
			<p>Sets the initial moving speed in units per second. If the train encounters a path_corner with its speed key set, it will move at that speed afterwards.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>animtype</p>
		</td>
		<td>
			<p>Animation type: how to play back frames while stopped at a waypoint</p><p>1 : &quot;One way&quot;</p><p>2 : &quot;Back and forth&quot;</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>animtype2</p>
		</td>
		<td>
			<p>Animation type: how to play back frames while moving between waypoints</p><p>1 : &quot;One way&quot;</p><p>2 : &quot;Back and forth&quot;</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>dmg</p>
		</td>
		<td>
			<p>Damage on crush (default is 2)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>frtime</p>
		</td>
		<td>
			<p>Speed of animation while stopped at a waypoint</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>frtime2</p>
		</td>
		<td>
			<p>Speed of animation while moving between waypoints</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pausetime</p>
		</td>
		<td>
			<p>Default waiting time when a value is not defined in path_corners</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>sounds</p>
		</td>
		<td>
			<p>Options:</p><p>0 (None)</p><p>1 (Ratchet Metal)</p><p>2 (Base door)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Spawnflags</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Move on trigger</p>
		</td>
		<td>
			<p>Will force the train to resume its path when triggered, even when temporarily waiting at a path_corner</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Stop on trigger</p>
		</td>
		<td>
			<p>Will stop the train at the next path_corner when triggered. Trigger it again to resume</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Non-Solid</p>
		</td>
		<td>
			<p>No collision</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>No rotation</p>
		</td>
		<td>
			<p>Model will not rotate when moving towards path_corners.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Rotate Y only</p>
		</td>
		<td>
			<p>Model only rotates around the Y axis, so pitch/roll angles are kept as initially set (useful to fake walking NPCs)</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>Here's a simple example of how a misc_modeltrain can be set up to animate progs/dog.mdl running between four path_corners.</TextSection>

<FullWidthImage src={image68} alt="Manual illustration" />

<ol>
	<li>Set up path corners as you would with a regularfunc_train. You can see a tutorial on func_trains<a href="https://youtu.be/J5EIuLXkBw4">here</a>.<br /></li>
	<li>Next set up amisc_modeltrainwith the following keys:</li>
</ol>

<TextSection><img src={image35} alt="Manual illustration" style="width: 100%" /><br /></TextSection>

<TextSection>As you can see, first_frame2 is the starting frame of the dog model's run cycle and last_frame2 is the last. You can use <a href="https://www.moddb.com/games/quake/downloads/quake-1-model-viewer-v050-alpha">Quake 1 Model Viewer</a> to examine animation frames as seen below. I changed the multiplier to 3 which makes the dog turn more quickly to the next path_corner. A speed of 200 seemed pretty close to a monster_dog's running speed.<br /></TextSection>

<FullWidthImage src={image106} alt="Manual illustration" />

<TextSection>More advanced setups with models that start, stop and trigger events can be seen in the pd_test_trains sample map.</TextSection>

<Divider />
