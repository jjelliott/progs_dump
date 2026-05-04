<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image110 from '$lib/assets/manual/triggers/triggers-trigger-monsterface-01.png';
	import image137 from '$lib/assets/manual/triggers/triggers-trigger-changemusic-01.png';
	import image20 from '$lib/assets/manual/triggers/triggers-trigger-look-01.png';
	import image23 from '$lib/assets/manual/triggers/triggers-trigger-look-02.png';
	import image26 from '$lib/assets/manual/triggers/triggers-trigger-look-03.png';
	import image29 from '$lib/assets/manual/triggers/triggers-trigger-monsterface-02.png';
	import image3 from '$lib/assets/manual/triggers/triggers-trigger-monsterface-03.png';
	import image120 from '$lib/assets/manual/triggers/triggers-info-destination-random-01.png';
	import image39 from '$lib/assets/manual/triggers/triggers-info-teleport-changedest-01.png';
	import image48 from '$lib/assets/manual/triggers/triggers-entity-state-system-01.png';
</script>

<h1 id="h.4d20djw9ngt2">Enhanced Triggers</h1>

<h2 id="h.510fpc3h32qr">is_waiting</h2>

<TextSection>If this value is set to 1, triggers will do nothing until another trigger activates it. The FGD provides a dropdown selection or you can enter the value by hand. See the <a href="#h.8u81w3vntzis">Entity State</a><a href="#h.8u81w3vntzis">System</a> section for more details.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>*In order to use is_waiting on a trigger_teleport, make sure and use targetname2 to "wake it up" instead of targetname.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.zb8n4wdv44x3">trigger_changetarget</h2>

<TextSection>Use this to change the target field on an entity to a different value.</TextSection>

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
			<p>target</p>
		</td>
		<td>
			<p>The targetname of entity you want to change</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>message</p>
		</td>
		<td>
			<p>The new targetname</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>cnt</p>
		</td>
		<td>
			<p>Which target field should be changed...</p><p>target (default)</p><p>target2</p><p>target3</p><p>target4</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.ylcfq4atosx">trigger_changelevel</h2>

<TextSection>We've made some changes to this entity in version 3.0.0 that allows mappers to display the "Congratulations" graphics and a custom message. These are displayed in the original game at the end of an episode when the player gets a rune or defeats a boss. This feature can also display multiple "pages" of text before the player warps to the next level using added <a href="#h.o2bsllbrv5s9">info_intermissiontext</a> entities. If no message is set in the trigger_changlevel, the entity will work as usual.</TextSection>

<TextSection>The setup for the custom ending screen is pretty simple. Set a string of text in the message key of a trigger_changelevel entity. There is a limit of 40 characters on each line, so use "\n" to continue the text on the next line if needed. If you want another page of text, use the message key in an info_intermissiontext entity. Set the cnt to 2, which tells the game to display this as the second "page" of text. If you want more pages, add additional info_intermissiontext entities and set the cnt to 3 for the third page and so on.</TextSection>

<TextSection>On trigger_changelevel entities that point to a hub or start map, the Use info_player_start2 spawnflag will spawn the player on the info_player_start2 entity when the map changes. Use this to skip skill selection when completing an episode as in the original game. Or you can return the player to a different part of a hub map.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Ensure there is an info_player_start2 on the map you are changing to when the info_player_start2 spawnflag is used.</p>
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
			<p>map</p>
		</td>
		<td>
			<p>Next map</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>message</p>
		</td>
		<td>
			<p>Message to show on intermission screen</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
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
			<p>1</p>
		</td>
		<td>
			<p>No Intermission</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>2</p>
		</td>
		<td>
			<p>Ignore info_intermissiontext<br /><br />Use this when you have multiple trigger_changelevels in your map to warp the player from the level with no additional messages</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>8</p>
		</td>
		<td>
			<p>Start off</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>16</p>
		</td>
		<td>
			<p>Use info_player_start2</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.r7e1169rd0xd">trigger_heal</h2>

<TextSection>When a player enters this trigger they are healed at a rate of 5 HP per second (by default.)</TextSection>

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
			<p>heal_amount</p>
		</td>
		<td>
			<p>Healing per second (default is 5 HP)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>health_max</p>
		</td>
		<td>
			<p>The upper limit for healing (default 100, max 250)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>spawnflags</p>
		</td>
		<td>
			<p>Start on - Start on if using targetname. Only needed if triggered by something other than touching. Player only, Monsters only</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise</p>
		</td>
		<td>
			<p>path to custom healing sound</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.dlvt1acwr6x4">trigger_look</h2>

<TextSection>John Romero wanted this in the original game and thanks to NullPointPaladin, it's finally here! This will trigger when a player is within the brush trigger and looks directly at a target entity. Use the first target key for the &quot;looked at entity&quot; and use the subsequent targets (2-4) to trigger other events. See sample map pd_cutscenes for one setup using a skip textured func_wall (more on this below.).</TextSection>

<TextSection>The entity targeted by trigger_look needs to be an entity with a bounding box (bbox), collision (solid), be targetable and visible (not moved out of bounds). A func_wall is a great example although entities like gibs, lasers, dead monsters, or others can be targeted as long as they are &quot;solid&quot; by using the solid spawnflag where applicable.</TextSection>

<TextSection>A func_illusionary doesn't work because it doesn&#x27;t have a bbox that interacts with the player. A func_detail is ignored, as it cannot be targeted.</TextSection>

<TextSection>If you need an invisible brush, use a skip textured func_wall. If you need to avoid triggering a second time use a trigger_relay to killtarget the trigger_look&#x27;s target or the trigger_look itself. Also, the default distance from the player to the look target is 500 Quake units. If the target needs to be farther away or closer, set the speed key to the proper distance. Use a brush as a &quot;ruler&quot; to measure the distance in TrenchBroom if needed. You can set a custom sound by setting sounds to 4 and adding a path to the sound in the noise1 value.</TextSection>

<TextSection>This will not work or is not recommended with the following brushes: func_illusionary, any func detail variant, func_group, func_particle_field, non-solid func_laser, func_bossgate or func_togglewall.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Brushes textured in clip will not work.</p><p>Don't use items or monsters as the trigger as they can be removed and /or lose their bbox upon death. .</p>
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
			<p>speed</p>
		</td>
		<td>
			<p>Distance from player to search for trigger, adjust if the target is too far from the trigger (default 500 units)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>wait</p>
		</td>
		<td>
			<p>Time between re-triggering</p><p>(default 0)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>sounds</p>
		</td>
		<td>
			<p>0-3 are standard Quake trigger choices, 4 allows a custom sound, requires a path set in noise1 key</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise1</p>
		</td>
		<td>
			<p>Path to custom sound. Use with sounds key set to 4 (e.g. fish/bite.wav)</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>You can see trigger_look in action near the beginning of the sample map pd_cutscenes. When the player looks at the rune a message plays. Yes, you could do this with a trigger_once using an angle key, but using this method it will only trigger if the player looks directly at the platform.</TextSection>

<FullWidthImage src={image23} alt="Manual illustration" />

<TextSection>In this example, we used a func_wall textured in skip. The reason this is used instead of the rune is that the rune's bounding box is smaller and farther away, making it harder to trigger correctly during testing.</TextSection>

<FullWidthImage src={image26} alt="Manual illustration" />

<FullWidthImage src={image20} alt="Manual illustration" />

<TextSection>We used a larger brush in this case and killtargeted it before the player could collide with it. If the setup is in a smaller area you will likely be able to use the entity itself. Test early! Test often! One tip is to have a backup method of targeting entities in case the player doesn't look at what you need them to trigger! In this map, we used the button nearby to killtarget the func_wall just in case the player missed this moment in the "story."</TextSection>

<h2 id="h.qlf5rv9yni0c">trigger_multiple</h2>

<TextSection>We've added a Wait for retrigger spawnflag to the standard trigger_mutiple. This allows you to toggle these in more simple setups without having to use <a href="#h.43tfjkceqz68">target_setstate</a> entities.</TextSection>

<h2 id="h.g3642cwi7pbl">trigger_push_custom</h2>

<TextSection>This can be used to create traps, jump pads, water currents and more.</TextSection>

<TextSection>If the Start Off spawnflag is set the entity will not trigger until targeted. This can be targeted and toggled off and on. If the Silent spawnflag is set it won&#x27;t make the standard "windfly" sound. Use Custom Noise spawnflag and the noise key/value together to use a custom push sound. Custom sounds should be &quot;one off" sounds NOT looping sounds. A good way to simulate a water current is to have the trigger_push_custom under the surface of your water brush by about 32 units. You can see an example in the pd_gallery.map</TextSection>

<h2 id="h.dozm4wlrtaoh">trigger_monster_jump</h2>

<TextSection>If the Start Off spawnflag is set the entity will not trigger until targeted. This can be targeted and toggled off and on. So monsters can be attacking from a distance and then be triggered to jump.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>The way trigger_monsterjump works requires a monster to be "awake" and "angry" at the player before the jump is activated. You can always target a monster with a trigger_once to wake them up.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.d63tbf6s5orc">trigger_take_weapon</h2>

<TextSection>This will remove the shotgun from the player's inventory and all shells. Place this over an info_player_start to have the player start with only the ax... or use this trigger to surprise the player in some devious way. Make sure and place a <a href="#h.tzu57ghsifqp">weapon_shotgun</a>in your map for the player to get eventually!</TextSection>

<TextSection>An alternative would be setting reset_items to 2 in your <a href="#h.tqd9c73nwjmg">worldspawn</a> if you want an "ax only" start.</TextSection>

<h2 id="h.36b192hkgekr">trigger_monsterface</h2>

<TextSection>Running monsters that cannot see their target and touch this, will face in the direction of the trigger&#x27;s angle instead of the unseen target. Use this trigger to make monsters leave their sniping spot and execute complex maneuvers.</TextSection>

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
			<p>angle</p>
		</td>
		<td>
			<p>Angle the monster will face (and run) while in the trigger volume.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>wait</p>
		</td>
		<td>
			<p>Wait time between re-triggers (default is 0)</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>This is a new trigger from TheSolipsist that can help you guide monsters who might otherwise get stuck on geometry or wander around trying to find the player. This takes a bit of testing to get right and it was designed for specific situations. For example: The player is above a Hellknight who can run up a ramp to reach them. However, if the player is hidden, the Hellknight will run around almost randomly and it's not guaranteed that he will ever find the ramp.</TextSection>

<FullWidthImage src={image110} alt="Manual illustration" />

<FullWidthImage src={image3} alt="Manual illustration" />

<TextSection>But you can guide the monster once they lose sight of the player with a series of two or more trigger_monsterface brushes. As you can see below, the triggers point the monster in the correct direction using the angle key. This won't upgrade the monster AI, but it's a powerful new tool for monster setups if used wisely.</TextSection>

<FullWidthImage src={image29} alt="Manual illustration" />

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Remember: trigger_monsterface only works when an already "angry" monster is inside the trigger volume and cannot see the player. Once they see their target, their behavior will go back to the default (attacking or running) until the player is hidden again.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.248ee9ww5lfx">trigger_setgravity</h2>

<TextSection>If the Start Off spawnflag is set the entity will not trigger until targeted. This trigger changes the gravity on a player or monster that touches it. The trigger itself can be toggled on and off.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>The amount of gravity can only be changed by touching another trigger_setgravity with a different setting.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>The gravity key defaults to 0 which is normal gravity. Lower numbers (e.g. 25) equal lower gravity. Setting 100 is normal gravity. Numbers above 100 will make the player "heavier", i.e. harder to jump.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>If you want multiple trigger setgravity triggers in one room or area, make sure the brushes are not touching each other. This can cause the triggers not to work properly.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.bdaqeahh8489">trigger_shake</h2>

<TextSection>Earthquake trigger - shakes players in its radius when active. Strength of the tremor is greatest at the center.</TextSection>

<TextSection>dmg is strength at center (default is 120.) wait duration of shake (default is 1.) count effect radius (default is 200.) noise path of sound to play when starting to shake. noise1 path of sound to play when stopping. We've included earthquake sound effects, see <a href="#h.zfwucqmwrkph">Appendix A</a> for details. targetname must be triggered. The VIEWONLY spawnflag shakes the view, but player movement is not affected. Check out the pd_bosses and pd_lava sample levels to see this in action.</TextSection>

<h2 id="h.7397dkwxsaf4">trigger_usekey</h2>

<TextSection>Variable sized single use trigger that requires a key to trigger targets. Must be targeted at one or more entities. Use the message key to create a custom message for this. e.g. "Bring the Gold Key here mortal!" This trigger cannot start off or be toggled. Setting cnt to 1 will not remove the key from the player's inventory, which mimic's the key behavior of Doom. Make sure and add this key | value to all doors and / or let the player know the default key behavior has changed. e.g. Perhaps a pickup message on the keys that reads: "This key works on many doors."</TextSection>

<h2 id="h.ktxgtyaafoyk">trigger_void</h2>

<TextSection>Use this for a &#x27;void&#x27; area. Removes monsters, ammo, etc... also kills players. Spawnflags can be used to protect players or monsters.</TextSection>

<h2 id="h.z1c17jy6ws6n">trigger_cdtrack</h2>

<TextSection>A point entity that changes the currently playing music track when triggered. The number of the track to play goes in the count key. e.g. 32 for track32.ogg See trigger_changemusic below for more information on formats etc. NOTE: the track number uses the count key here but trigger_changemusic uses the sound key for the same info.</TextSection>

<h2 id="h.nwsdez52gksv">trigger_changemusic</h2>

<TextSection>A trigger brush that changes the currently playing music track. The number of the track to play goes in the sounds key (just like worldspawn). Most Quake engines require the trackXX.xxx format. For example: track02.ogg or track98.mp3 Different Quake engines play different formats. This is why Quakespasm, Quakespasm-Spike and vkQuake are recommended, as they can play mp3, ogg, wav and FLAC formats. You can read more about formats <a href="http://quakespasm.sourceforge.net/Quakespasm.html#ss3.1">here</a> and much more detailed information about how to format music for Quake <a href="http://quakespasm.sourceforge.net/Quakespasm-Music.txt">here</a>.</TextSection>

<TextSection>If you are adding custom music to your mod, we recommend you avoid using track01-11. track01 does not exist in Quake and track02-track11 are Quake's original tracks. Also note that FTEQW does not play mp3 and Mark V doesn't play ogg formats! Additionally, Mark V cannot play mp3s that contain embedded images. You can use a program like <a href="https://www.ocenaudio.com/">Ocenaudio</a> to open the file and remove the image easily. In this case, you go to Audio Properties and click the small "x" in the upper right (not captured below) to remove the image then save the file.</TextSection>

<TextSection>NOTE: We recommend including both mp3 and ogg formatted music tracks to ensure compatibility with various Quake engines.</TextSection>

<FullWidthImage src={image137} alt="Manual illustration" />

<Divider />

<h1 id="h.ptzbs1vr6gcq">trigger_teleport</h1>

<h2 id="h.crzkl3jb7cf4">info_destination_random</h2>

<TextSection>progs_dump adds a number of new features to trigger_teleport. These are selected with new spawnflags. In the case of the random spawnflag, there is a new entity info_teleport_random which is a random destination marker for the trigger. info_teleport_changedest in another entity that can be used to tell a trigger_teleport to change its target value to a different destination. More info below.</TextSection>

<FullWidthImage src={image120} alt="Manual illustration" />

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Spawnflag</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Player Only</p>
		</td>
		<td>
			<p>as in original Quake</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Silent</p>
		</td>
		<td>
			<p>no ambient sounds as in original Quake, use for monster closets and secrets etc.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Random</p>
		</td>
		<td>
			<p>can teleport to random destination entities</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Stealth</p>
		</td>
		<td>
			<p>No particles or sound effects</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Monster Only</p>
		</td>
		<td>
			<p>can be used with other spawnflags: stealth, silent and random in any combination</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>Using the random spawnflag on trigger_teleport requires use of the count key and targeting a info_teleport_random (instead of the regular info_teleport_destination). This causes the teleporter to send the player to a random destination among the info_teleport_random markers in the level. In the count key, add a number equal to the number of info_teleport_random entities you placed.</TextSection>

<h2 id="h.2i7k5ua3qug7">info_teleport_changedest</h2>

<TextSection>Allows a mapper to change the target of a teleport_trigger. Useful in maps where the player may fall into a void and the mapper wants to update where they &quot;respawn&quot; as they progress through the level. Could also be used for teleport puzzles and more. This requires the addition of a trigger_multiple in some setups.</TextSection>

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
			<p>target</p>
		</td>
		<td>
			<p>the targetname of the trigger_teleport to change</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>message</p>
		</td>
		<td>
			<p>new info_teleport_destination&#x27;s targetname to switch to</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>targetname</p>
		</td>
		<td>
			<p>name of this entity so we can trigger it with a trigger_mulitple or other</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>NOTE: The best way to understand how this works is to look at the sample map pd_change_dest.</TextSection>

<TextSection>The basic workflow is to set up a trigger_teleport with a target as usual, then add a targetname. However, instead of using an info_teleport destination, the targetname will be referenced by an info_teleport_changedest point entity. The info_teleport_changedest's target key should match the targetname of the trigger_teleport. The message key is the "replacement" targetname for the trigger_teleport. Finally, the targetname is used to trigger this entity. This pattern can be duplicated multiple times to change the destination of a single trigger_teleport.</TextSection>

<TextSection>NOTE: when a trigger_teleport has a targetname it must be triggered to operate, so adding an overlapping trigger_multiple targeting the trigger_teleport will be necessary. Place the trigger_multiple 8 units inside the trigger_teleport and this will re-trigger it. If you need to "kill" the trigger_teleport, killtarget the trigger_mutiple and the teleporter will no longer work.</TextSection>

<FullWidthImage src={image39} alt="Manual illustration" />

<Divider />

<h1 id="h.qngdzuyqvfrm">Entity State System</h1>

<TextSection>The text below was adapted from the Alkaline Devkit Mapping Guide by bmFbr.</TextSection>

<TextSection>Starting in version 3.0.0 progs_dump has a state system somewhat similar to AD&#x27;s &quot;estate&quot; system and Copper&#x27;s target_lock entity. With it you can disable/enable entities at will, giving you greater control over complex map scripting and events. Entity behavior when disabled is class-dependent. Take a look at the prefab_estate sample map for examples.</TextSection>

<FullWidthImage src={image48} alt="Manual illustration" />

<h2 id="h.43tfjkceqz68">target_setstate</h2>

<TextSection>You set an entity&#x27;s state using the target_setstate point entity. You can directly disable, enable, or toggle the state. Target entities can start the map already disabled through the spawnflag Targets start disabled.</TextSection>

<TextSection>If you need to target an entity that has its behavior changed when given a targetname (like func_door or trigger_teleport), you can make the target_setstate target the entity&#x27;s targetname2 field.</TextSection>

<TextSection>This system is integrated with dormant triggers (is_waiting key), meaning that you can &quot;wake&quot; a trigger not only by triggering it, but also by using a target_setstate on it.</TextSection>

<TextSection>The entity&#x27;s state is kept under the estate field, with 0 meaning enabled/normal operation, and 1 disabled. So for triggers, you&#x27;re able to make them start off by directly setting this value to 1. You cannot do that to doors nor buttons, in those cases you need to use a target_setstate with &quot;start disabled&quot; set.</TextSection>

<TextSection>A lot of entities support enabling/disabling:</TextSection>

<TextSection>Trigger brushes of any class</TextSection>

<TextSection>When disabled, all trigger_* brush entities get their touch action turned off. This includes self-sufficient entities that don&#x27;t need to target anything, like fog triggers, ladders, monsterjumps, changelevels, etc.</TextSection>

<TextSection>Also, any entity that fires their targets won&#x27;t do it while disabled (like trigger_relay), and a trigger_counter won&#x27;t get its use count increased.</TextSection>

<TextSection>Doors</TextSection>

<TextSection>Like in Copper, disabling a door makes it not respond to touches or triggers, and disables its trigger field. Doors will also close immediately when disabled. Toggling doors or with wait -1 set won&#x27;t close by default, but you can change that behavior using the spawnflag Force all doors to close. In this case, if re-enabled, the door will return to the position it was before disabling.</TextSection>

<TextSection>Buttons</TextSection>

<TextSection>Also similar to Copper, buttons depress themselves when disabled and cannot be activated. If the button has a wait -1 value (that is, it&#x27;s a press-once button), when re-enabled it&#x27;ll reset back to its un-pressed state regardless if it had been activated before. You can change that using the spawnflag Don&#x27;t reset button state, in which case it&#x27;ll revert to its previous state when re-enabled.</TextSection>

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
			<p>style</p>
		</td>
		<td>
			<p>0 : Toggle current state (default)</p><p>1 : Force active</p><p>2 : Force inactive</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Spawnflag</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Targets start disabled</p>
		</td>
		<td>
			<p>force the target entities to spawn disabled/locked</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Force all doors to close</p>
		</td>
		<td>
			<p>Forces doors with wait -1 to close</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>Don&#x27;t reset button state</p>
		</td>
		<td>
			<p>Revert button to previous state when re-enabled if wait -1 is set</p>
		</td>
	</tr>
	</tbody>
</table>

<Divider />

<h1 id="h.s0ob6tha7q1f">Advanced Triggering</h1>

<TextSection>The text below was adapted from the Alkaline Devkit Mapping Guide by bmFbr.</TextSection>

<TextSection>progs_dump version 3 has advanced scripting through 2 specialized entities:</TextSection>

<h2 id="h.m90gjqryf7zl">trigger_filter</h2>

<TextSection>This point entity relays only if a given condition evaluates to true, unleashing ultimate scripting capabilities. You can test various fields on the entity targeted by the include field (you can target another entity&#x27;s targetname2 as well). If you let the include field empty, it&#x27;ll test against the activating entity instead, be it a player, a monster or anything else - see trigger_everything below for more details.</TextSection>

<TextSection>You can, for example, relay a trigger only if a door or plat is in a certain position, or if a targeted enemy is alive or dead or below a certain health amount, or if the player is carrying some specific weapon or item, or if the activator is a certain type of weapon projectile - the possibilities are almost endless.</TextSection>

<TextSection>In case you&#x27;re filtering to activate only in case if it&#x27;s a specific weapon projectile (like a grenade for example), you can make the targets fire with the activating entity&#x27;s owner as the activator with the spawnflag Relay activator as owner - say, if the trigger is activated by a player&#x27;s grenade, it&#x27;ll fire with the player as activator, instead of the grenade itself.</TextSection>

<TextSection>There are various fields available to test, selectable through the style key. They all fall into three field types (float, flag and string), and for each there&#x27;s a set of operations available to evaluate, selectable through the weapon key.</TextSection>

<TextSection>Float types can do all operations, and are compared to this entity&#x27;s count field. Flag types support Equal and bitwise AND, and are compared to the aflag field. String types have only Equal evaluation, and are compared to this entity&#x27;s type field. You can set the trigger to fire if the condition evaluates to false by activating the spawnflag Trigger if false. It&#x27;ll never fire if the entity targeted by include isn&#x27;t found, regardless of this spawnflag.</TextSection>

<TextSection>If you need to evaluate more than one condition, you can chain multiple filters in a row. Also, the state of the last evaluation is stored in this entity&#x27;s state field (1 for fired, 0 for not fired).</TextSection>

<h2 id="h.o76tjw8aeg3c">trigger_everything</h2>

<TextSection>A no-holds-barred touchable solid trigger. Everything triggers it. Players, monsters, projectiles, gibs, even other solid entities like doors and plats.</TextSection>

<TextSection>It can only fire targets matching its target field. Due to its &quot;fire-all&quot; nature, it doesn&#x27;t have support for the &#x27;target2-4&#x27; fields, neither &#x27;message&#x27; nor &#x27;killtarget&#x27;. Useful when used in conjunction with the trigger_filter point entity to filter out its firing.</TextSection>

<TextSection>By default it&#x27;ll fire for each and every registered touch, even if simultaneous. If given a wait value, it&#x27;ll act like a trigger_multiple, where a single activation puts it on hold for wait seconds. If the target is a trigger_filter, you can set it to wait only if the filter evaluates to true through the spawnflag Wait only if trigger_filter evaluates to true.</TextSection>

<Divider />
