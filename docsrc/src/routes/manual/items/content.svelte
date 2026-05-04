<script>
	import Column from '$components/Column.svelte';
	import Columns from '$components/Columns.svelte';
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image101 from '$lib/assets/manual/items/items-custom-item-models-01.png';
	import image116 from '$lib/assets/manual/items/items-item-key-custom-01.png';
	import image125 from '$lib/assets/manual/items/items-custom-item-models-02.png';
	import image136 from '$lib/assets/manual/items/items-custom-item-models-03.png';
	import image148 from '$lib/assets/manual/items/items-item-backpack-01.png';
	import image15 from '$lib/assets/manual/items/items-custom-item-models-04.png';
	import image16 from '$lib/assets/manual/items/items-custom-item-models-05.png';
	import image2 from '$lib/assets/manual/items/items-items-01.png';
	import image24 from '$lib/assets/manual/items/items-item-key-custom-02.png';
	import image25 from '$lib/assets/manual/items/items-item-key-custom-03.png';
	import image49 from '$lib/assets/manual/items/items-custom-item-models-06.png';
	import image5 from '$lib/assets/manual/items/items-items-02.png';
	import image59 from '$lib/assets/manual/items/items-item-backpack-02.png';
	import image60 from '$lib/assets/manual/items/items-custom-item-models-07.png';
	import image64 from '$lib/assets/manual/items/items-items-03.png';
	import image66 from '$lib/assets/manual/items/items-custom-item-models-08.png';
	import image69 from '$lib/assets/manual/items/items-respawning-items-01.png';
	import image8 from '$lib/assets/manual/items/items-item-backpack-03.png';
	import image82 from '$lib/assets/manual/items/items-item-armor-shard-01.png';
	import image83 from '$lib/assets/manual/items/items-item-health-vial-01.png';
	import image87 from '$lib/assets/manual/items/items-items-04.png';
	import image98 from '$lib/assets/manual/items/items-item-backpack-04.png';
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import ImageSection from '$components/ImageSection.svelte';
	import Image from '$components/Image.svelte';
</script>

<h1 id="h.xpvym4myt51u">Items</h1>

<TextSection>Most items have enhanced capabilities in progs_dump. This includes ammo, weapons, keys
	and power-ups. Items can be suspended in mid-air via a spawnflag or trigger spawned just like
	monsters. Set a targetname for the item and select the Trigger Spawned spawnflag. Like monsters,
	they can spawn silently or with the "t-fog" teleport visual and sound effects.
</TextSection>

<TextSection>The effects key allows you to add some built-in visual effects to items. A drop down is
	available with brightfield (yellow particles), bright light and dim light effects. The alpha key
	controls the model transparency so you can have "ghostly" items or monsters.
</TextSection>

<ImageSection>
	<Image src={image5} alt="Manual illustration" />
	<Image src={image64} alt="Manual illustration" />
</ImageSection>
<ImageSection>
	<Image src={image87} alt="Manual illustration" />
	<Image src={image2} alt="Manual illustration" />
</ImageSection>


<h2 id="h.i8rmhzuqdbhd">Respawning Items</h2>

<TextSection>Most items can also be set to respawn. Setting the ritem key value to 1 will cause the
	items to respawn. Items will respawn based on the default time settings for a deathmatch game. You
	can set a custom respawn time using the respawndelay key and control how many times an item
	respawns with the respawncount key. By default, items will display the "t-fog" effects when
	respawning. You can mimic deathmatch respawns with the Respawn with DM Effect spawnflag. This
	skips the "t-fog" effect and plays a more subtle sound effect.
</TextSection>

<TextSection>In the example below, the super nailgun is trigger spawned when the player presses a
	button targeting "t2". After the player picks up the weapon it will respawn in 45 seconds but only
	3 times.
</TextSection>
<ImageSection margin="2">
	<Image src={image69} alt="Manual illustration" />
</ImageSection>
<h2 id="h.z4t06t4aoib0">Custom Item Models</h2>

<TextSection>Similar to monsters; health, ammo, armor, artifacts and other items in the game can use
	custom models. Also, for health and ammo boxes, mappers can choose the original .bsp models or
	.mdl versions by setting the worldspawn entity style key to 1. Mdls will "accept" the light on the
	brush directly beneath them. Bsp models are "pre-lit" at a set value. Using .mdls can make for
	more realistic lighting in your maps. Many thanks to Lunaran for sharing these mdls from his
	excellent <a href="http://lunaran.com/copper/index.html">Copper mod</a>! Of course, you can use
	any model for these by setting the mdl_body key as with other entities.
</TextSection>
<ImageSection>
	<Image src={image66} alt="Manual illustration" />

	<Image src={image136} alt="Manual illustration" />
</ImageSection>
<TextSection>Some custom models may have a different origin than the item you are replacing. If you
	trigger spawn these items, the teleport "t-fog" particles will be off center. Use the
	particles_offset key to adjust the coordinates. It may take a little trial and error to get the
	right adjustment.
</TextSection>

<ImageSection margin="4">
	<Image src={image101} alt="Manual illustration" />
</ImageSection>
<ImageSection>
	<FullWidthImage src={image125} alt="Manual illustration" />
	<FullWidthImage src={image60} alt="Manual illustration" />
</ImageSection>

<TextSection>You may want to edit the model's origin using AdQuedit or a modeling program. Again, it
	might take a little trial and error depending on the model. Models that rotate should not be
	edited like this unless you remove the rotate flag.<br /></TextSection>
<ImageSection margin="3">
		<Image src={image15} alt="Before" />
</ImageSection>
<p>Before</p>
		<FullWidthImage src={image49} alt="AdQuedit" />
		<p>AdQuedit</p>

		<FullWidthImage src={image16} alt="After" />
		<p>After</p>


<h2 id="h.s34i9s7h22tw">item_armor_shard</h2>

<TextSection>Originally progs_dump was less ambitious and the end goal was just an "enhanced"
	vanilla Quake for mappers. But as ladders, breakables and rotating brushes were requested, that
	strict goal was relaxed. Armor shards have been controversial in the single player community, but
	can be useful for mappers who want to guide the player in certain directions or reward them with a
	less potent power-up. These shards originally were part of the canceled RemakeQuake project. The
	code has been modified a bit from that version.
</TextSection>

<FullWidthImage src={image82} alt="Manual illustration" />

<TextSection><br />Quake's armor uses a proportional system to protect the player's health points.
	Each shard is worth 5 points of armor. On their own, shards protect the same proportion of damage
	as green armor. If you pick up yellow or red armor, the proportion changes to those levels, but
	the extra points do not carry over. You can buff each armor level up to 25 extra points.
</TextSection>

<h2 id="h.fu8mbenbv7xm">item_health_vial</h2>

<TextSection>These are worth 5 health. Vials will not "over heal" the player. The default model has
	5 built-in skins and uses red by default.
</TextSection>

<FullWidthImage src={image83} alt="Manual illustration" />

<h2 id="h.mkbxy8o22p89">item_backpack</h2>

<TextSection>Use this as an alternate ammo pickup for secret areas or for other special gameplay
	setups. This entity requires you to set an ammo type spawnflag. If the All Ammo flag is selected,
	item_backpack gives roughly half the ammo from each of the 4 standard pickups:
</TextSection>

<TextSection>10 Shells</TextSection>

<TextSection>12 Nails</TextSection>

<TextSection>2 Rockets</TextSection>

<TextSection>3 Cells</TextSection>

<TextSection>Or you can check off spawnflags to mix and match types. e.g. Shells and Cells. Override
	the spawnflag defaults by adding custom amounts to the keys for ammo_shells, ammo_nails,
	ammo_rockets or ammo_cells. Make sure and select both the spawnflag and matching ammo_ type.
	Remember, player ammo counts will always max out at 100 or 200 depending on the type!
</TextSection>

<FullWidthImage src={image59} alt="Manual illustration" />

<FullWidthImage src={image98} alt="Manual illustration" />

<table class="table">
	<tbody>
		<tr>
			<td>
				<p>item_backpack can be trigger spawned, spawn silently and be suspended but cannot be set
					to respawn.</p>
				<p>Make sure and select one or more ammo_ type spawnflags for this to appear in your map.
					All Ammo will always override any other spawnflags.</p>
			</td>
		</tr>
	</tbody>
</table>

<TextSection>item_backpack uses a new model created for progs_dump by <a
	href="https://www.artstation.com/starshipwaters">starshipwaters</a>. However, you can use any
	other model similar to how monsters work with the mdl_body key. You can change the pickup sound
	with snd_misc.
</TextSection>

<TextSection>There are 12 different skins you can choose from, including distinct versions for the
	four standard ammo types. The FGDs feature a dropdown for easy skin selection.
</TextSection>

<FullWidthImage src={image8} alt="Manual illustration" />

<TextSection>If you prefer the original vanilla backpack, use skin 12 or set the mdl_body key to
	progs/backpack.mdl. You can set a skin index if you are using a different custom model with
	built-in skins. To make an invisible backpack set mdl_body to progs/s_null.spr.
</TextSection>

<table class="table">
	<tbody>
		<tr>
			<td>
				<p>Grunts, Enforcers and Ogres will still drop the standard vanilla backpack when they are
					killed unless you set keep_ammo to 1.</p>
			</td>
		</tr>
	</tbody>
</table>

<TextSection>The default pickup message is `You got a backpack.` But you can set a custom message
	with the netname key. &#x27;You got&#x27; will be the prefix and the mapper chooses the rest of
	the message.
</TextSection>

<TextSection>e.g. For &#x27;You got a bunch of rockets!&#x27; the netname value would be &#x27;a
	bunch of rockets!&#x27; In the example below, the backpack will have the rocket skin (3), give 99
	rockets only, trigger spawn and be suspended in mid-air. Use the effects key to add lighting and
	particle effects.
</TextSection>

<FullWidthImage src={image148} alt="Manual illustration" />

<h2 id="h.92t5vsk9y96g">item_key_custom</h2>

<TextSection>This allows mappers to use any Quake compatible model, sprite or BSP as a key. We've
	also included new key models with different color variations. The new key models are not
	hard-coded, but you can find these in the progs folder and set their paths in the mdl key.
</TextSection>

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
				<p>keyname</p>
			</td>
			<td>
				<p>name of the key, e.g. &#x27;bronze key&#x27; (required)</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>mdl</p>
			</td>
			<td>
				<p>model file path (required)</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>noise</p>
			</td>
			<td>
				<p>sound file for the pickup sound (default is per worldtype)</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>skin</p>
			</td>
			<td>
				<p>skin index (default 0)</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>frame</p>
			</td>
			<td>
				<p>display this single frame of the model, if animated (default 0)<br /><br />NOTE: The key
					will not display any animation.</p>
			</td>
		</tr>
	</tbody>
</table>

<TextSection>Three new models based on id's original keys are included. One for each worldtype:
	base, runic and wizard. Each of these has four color variations, also referred to as their skin
	index: jade (green, skin 0), runic (magenta, skin 1), blood (red, skin 2) and alabaster (gray,
	skin 3). The <a href="#h.nup6u83qwzcr">development/wads</a> folder has a wad with textures for use
	with the different styles seen below.
</TextSection>

<FullWidthImage src={image25} alt="Manual illustration" />

<FullWidthImage src={image24} alt="Manual illustration" />

<FullWidthImage src={image116} alt="Manual illustration" />

<TextSection>The keyname value is used both for the pickup message and to associate the key with the
	entity that it unlocks. To make a func_door or trigger_usekey require this key, set the keyname
	value of that entity so that it matches the keyname value of the item_key_custom entity.
</TextSection>

<TextSection>If different item_key_custom entities have the same keyname value, they will be treated
	as different copies of the same key and may be used interchangeably.
</TextSection>

<TextSection>A map may have a maximum of 23 unique keyname values across all entities.</TextSection>

<TextSection>The behavior of an item_key_custom should be as the player expects (based on the
	behavior of the silver and gold keys), except for the fact that it will not appear as an icon in
	the player&#x27;s status bar when picked up. This is a limitation of the engine. Finally, there is
	a sample map called pd_keys you can review.
</TextSection>

<h2 id="h.tzu57ghsifqp">weapon_shotgun</h2>

<TextSection>This is a pickup model that should be used when you want a player to spawn with only an
	ax and then later get the shotgun: (<a href="#h.ytjxh6kf7pu0">trigger_take_weapon</a> or <a
		href="#h.tqd9c73nwjmg">reset_items</a><a href="#h.tqd9c73nwjmg">2</a> in worldspawn). There are
	two models to choose from. Spawnflag 2 (the default) selects an unused "classic look" model from
	Rubicon 2 by metlslime. Spawnflag 4 is an alternative from Slapmap and has been used in a few
	mods.
</TextSection>

<h2 id="h.gzzeu3lq3rfh">Item Customization Table</h2>

<TextSection>Items have different levels of customization options depending on the type:
</TextSection>

<table class="table">
	<tbody>
		<tr>
			<td>
				<p>Category</p>
			</td>
			<td>
				<p>Model / Skins</p>
			</td>
			<td>
				<p>Sound</p>
			</td>
			<td>
				<p>Name</p>
			</td>
			<td>
				<p>Details</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>ammo</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>Set style to 1 in Worldspawn to replace default BSP models with Copper ammo models</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>armor</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>pickup sound</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>Use the obit_name key for custom name</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>armor shard</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>pickup sound</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>Use the obit_name key for custom name</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>health</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>pickup sound</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>Set style to 1 in Worldspawn to replace default BSP models with Copper ammo models</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>health vial</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>pickup sound</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>

			</td>
		</tr>
		<tr>
			<td>
				<p>artifacts</p>
			</td>
			<td>
				<p>yes</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>

			</td>
		</tr>
		<tr>
			<td>
				<p>weapons</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>

			</td>
		</tr>
		<tr>
			<td>
				<p>runes</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>
				<p>no</p>
			</td>
			<td>

			</td>
		</tr>
	</tbody>
</table>

<TextSection>If you want to fully customize ammo pickups, use <a href="#h.mkbxy8o22p89">item_backpack</a>
	instead.
</TextSection>

<TextSection>NOTE: If the wrong number is entered in the skin key the model will not display in
	TrenchBroom.
</TextSection>

<Divider />
