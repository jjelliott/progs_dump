<script>
	import Column from '$components/Column.svelte';
	import Columns from '$components/Columns.svelte';
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image18 from '$lib/assets/manual/effects/effects-misc-bob-01.png';
	import image74 from '$lib/assets/manual/effects/effects-misc-bob-02.png';
	import image75 from '$lib/assets/manual/effects/effects-misc-bob-03.png';
	import image118 from '$lib/assets/manual/effects/effects-light-torch-small-walltorch-01.png';
	import image30 from '$lib/assets/manual/effects/effects-switchable-light-styles-01.png';
	import image90 from '$lib/assets/manual/effects/effects-switchable-light-styles-02.png';
	import image111 from '$lib/assets/manual/effects/effects-func-particlefield-01.jpg';
	import image7 from '$lib/assets/manual/effects/effects-func-particlefield-02.png';
</script>

<h1 id="h.cx7934s341n">Effect Entities</h1>

<TextSection>You can trigger the following visual effects.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Effect</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			play_explosion
		</td>
		<td>
			<p>grenade explosion, causes damage</p>
		</td>
	</tr>
	<tr>
		<td>
			play_spawnexpl
		</td>
		<td>
			<p>Spawn death explosion, causes damage</p>
		</td>
	</tr>
	<tr>
		<td>
			play_lavalsplash
		</td>
		<td>
			<p>large particle effect, can have custom sound</p>
		</td>
	</tr>
	<tr>
		<td>
			play_brlight
		</td>
		<td>
			<p>Toggles a bright lighting effect on or off.</p>
		</td>
	</tr>
	<tr>
		<td>
			play_dimlight
		</td>
		<td>
			<p>Toggles a lighting effect on or off.</p>
		</td>
	</tr>
	<tr>
		<td>
			play_mflash
		</td>
		<td>
			<p>When triggered, it plays a brief muzzle flash effect.</p>
		</td>
	</tr>
	<tr>
		<td>
			play_brfield
		</td>
		<td>
			<p>When triggered, toggles a spherical yellow particle effect.</p>
		</td>
	</tr>
	<tr>
		<td>
			play_gibs
		</td>
		<td>
			<p>When triggered, it plays gib effects and sound. Same as meat_shower from earlier versions. See an example of meat_shower used with a func_counter in pd_meat.map</p><p>When triggered this entity will spawn a shower of gibs. style = 0 is regular gib effect, 1 is more violent fly_sound = 0 is silent, 1 plays randomized gib sounds targetname = Must be triggered</p>
		</td>
	</tr>
	<tr>
		<td>
			play_tele
		</td>
		<td>
			<p>When triggered, this shows the teleport particle effects and sound.</p><p>Same as tele_fog from earlier versions. Use this when killtargeting an entity if the player can see it happen. You can see an example on the Shambler near the trigger_use key entity in The Gallery map.</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>tele_fog, play_tbabyexplode and meat_shower have been deprecated and renamed. The QuakeC code is still present for backward compatibility but the entities have been removed from the FGD.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.84vtg9deah6i">func_bob</h2>

<TextSection>This will create a brush that gently moves back and forth or up and down depending on the angle. Use targetname to trigger it on, angle is direction movement, use &quot;360&quot; for angle 0</TextSection>

<TextSection>height direction intensity (def=8) count = direction cycle timer (def=2s, minimum=1s)</TextSection>

<TextSection>waitmin = Speed up scale (def=1) 1+=non linear, waitmin2 = Slow down scale (def=0.75)</TextSection>

<TextSection>delay = Starting time delay (def=0, -1=random) style If set to 1, starts off and waits for trigger</TextSection>

<TextSection>_dirt -1 = will be excluded from dirtmapping, _minlight = Minimum light level for any surface of the brush model, _mincolor = Minimum light color for any surface (def=&#x27;1 1 1&#x27; RGB)</TextSection>

<TextSection>_shadow = Will cast shadows on other models and itself, _shadowself = Will cast shadows on itself. Use the BOB_COLLISION spawnflag for solid and conversely, BOB_NONSOLID.</TextSection>

<h2 id="h.9b4pli9wa9bz">misc_bob</h2>

<TextSection>Same as above but uses a custom model instead of a brush. Use the mdl key to set the path of the model. There's a quirk in TrenchBroom that will not display the model in its proper orientation once you set the angle key as seen here. This is only in the editor, in-game the model will be correct.</TextSection>

<Columns>
	<Column col="6">
		<FullWidthImage src={image75} alt="Manual illustration" />
	</Column>
	<Column col="6">
		<FullWidthImage src={image74} alt="Manual illustration" />
		<FullWidthImage src={image18} alt="Manual illustration" />
	</Column>
</Columns>

<Divider />

<h1 id="h.t1ubka72y9dq">Light and Shadow Features</h1>

<h2 id="h.y7p632yq0pj6">Switchable Light Styles</h2>

<TextSection>Normally, if you apply a style to a light (e.g. candle flicker, strobe) those cannot be triggered on and off. However, progs_dump has this ability, borrowed from c0burn's in-progress Slipgate mod. Just choose a style2 selection from the dropdown and target the light as normal. Use the START OFF spawnflag if needed.<br /><br />Select the FADE IN / OUT spawnflag for a smooth fade in / out effect on non-animated lights. The speed key controls the light transition time. Default 0.1</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Fades will not work on animated lights (e.g. style or style2).</p>
		</td>
	</tr>
	</tbody>
</table>

<Columns>
	<Column col="6">
		<FullWidthImage src={image30} alt="Manual illustration" />
	</Column>
	<Column col="6">
		<FullWidthImage src={image90} alt="Manual illustration" />
	</Column>
</Columns>

<h2 id="h.2x6gia1lf18n">light_torch_small_walltorch</h2>

<TextSection>Just like monsters and items, you can replace the model on this entity to make it easier to mix and match different light sources. Use the mdl_body and skins keys as you would with custom monsters and items. Use the silent spawnflag to disable the crackling fire sound if you want a custom sound. In this case, you'll want to use an <a href="#h.p4yuauz0ogub">ambient_general</a>entity near the lightsource with a looping sound file.</TextSection>

<FullWidthImage src={image118} alt="Manual illustration" />

<h2 id="h.duur26ld3y7o">Switchable Shadows</h2>

<TextSection>Thanks to bmFbr, progs_dump now has the switchable shadow system from Alkaline. Every brush entity, except triggers and func_detail variants, can have toggleable shadows by adding a _switchableshadow 1 key to it. func_door, func_breakable and toggle_visiblewall already have built-in support for that, so all you need to do is select the key for it to work automatically.</TextSection>

<TextSection>For other entity classes, like <a href="#h.gg7v0nmp9mcv">func_shadow</a>, you need to set up a <a href="#h.c7uic9tfe8em">misc_shadowcontroller</a> point entity to control their switchable shadows. Here's how:</TextSection>

<ul>
	<li>Create a_switchableshadowkey in the desired entity and set it to 1;</li>
	<li>Give it atargetname- if the entity changes behavior when given atargetname, you can target atargetname2field instead.</li>
	<li>Create amisc_shadowcontrollerentity targeting the bmodel, and give it a differenttargetname.</li>
	<li>Triggering the shadow controller toggles the shadow on/off with a fading animation.</li>
</ul>

<TextSection>Currently, ericw&#x27;s LIGHT tool supports switchable shadows only when the map isn&#x27;t using bounce lighting. That&#x27;s been already corrected in development versions however, and should be out in its next release.</TextSection>

<h2 id="h.gg7v0nmp9mcv">func_shadow</h2>

<TextSection>An invisible, non-solid brush entity that can be used to cast shadows In order for it to work correctly you need to either set a _shadow 1 or a _switchableshadow 1 key. See the prefab_shadows sample map for examples.</TextSection>

<h2 id="h.c7uic9tfe8em">misc_shadowcontroller</h2>

<TextSection>Controls switchable shadows on any bmodel entity (except doors and breakables). Target this entity to toggle the shadows on/off with an optional fading animation.Targeted bmodel must have _switchableshadow set to 1. If the target entity changes its default behavior when &#x27;targetname&#x27; is set (such as breakables), you can target the entity&#x27;s &#x27;targetname2&#x27; key. See the prefab_shadows sample map for examples.</TextSection>

<Divider />

<h1 id="h.d6ssivw703bt">Particle Effects</h1>

<h2 id="h.njr25kmt5b34">misc_sparks</h2>

<TextSection>Produces a burst of yellow sparks at random intervals. If targeted, it will toggle between on or off. If it targets a light, that light will flash along with each burst of sparks. NOTE: targeted lights should be set to START_OFF. Spawnflags = SPARKS_BLUE: sparks are blue in color SPARKS_PALE sparks are pale yellow in color. wait is the average delay between bursts (variance is 1/2 wait). Default is 2. cnt is the average number of sparks in a burst (variance is 1/4 cnt). Default is 15. sounds 0 = no sound, 1 = sparks. noise is the path to a custom spark sound effect, sounds must be set to 1.</TextSection>

<h2 id="h.6g5ntes3auy0">misc_particle_stream</h2>

<TextSection>A particle stream! It appears when triggered. This entity is one end of the stream, target another entity as the other end-point. Usually an info_notnull, but you should be able to target anything (like monsters). target = This entity&#x27;s origin is the end-point of the stream dmg = 1st Color, use this by itself if you want a single color stream cnt = 2nd Color, mixes particles of both colors. noise = Sound to play when triggered. See color palette reference below. NOTE: You can see this in action in the pd_counter sample map and at the end of the pd_lasers map.</TextSection>

<h2 id="h.bwip1260yajg">func_particlefield</h2>

<TextSection>Creates a brief particle flash roughly the size of the defining brush each time it is triggered. You can see an example of this in the pd_ladders example map. In this case, the particle fields are animated in sequence to create a force field effect. USE_COUNT when the activator is a func_counter, the field will only activate when count is equal to cnt. Same as using a func_oncount to trigger. cnt is the count to activate on when USE_COUNT is set. color is the color of the particles. Default is 192 (yellow). count is the density of the particles. Default is 2. noise is the sound to play when triggered. Do not use a looping sound here. dmg is the amount of damage to cause when touched.</TextSection>

<TextSection><img src={image7} alt="Manual illustration" style="width: 100%" /><br /></TextSection>

<TextSection>If you want to use another color for the particle field, refer to the Quake color palette below NOTE: not all colors will work:</TextSection>

<FullWidthImage src={image111} alt="Manual illustration" />

<h2 id="h.yo6jekdbol70">misc_particles</h2>

<TextSection>Produces a continuous particle splash for waterfalls and other effects. Can be triggered and toggled. Spawnflags = START_OFF The default behavior has the particles shimmering in an upward motion. color = color of particles. 0 through 15, corresponds to a row of the quake palette (see above for palette numbers). (default 0) movedir = average movement vector of particles (default 0 0 4) NOTE: Play with negative numbers to change the movement direction. wait = time between particle generation cycles. (default 0.1) volume = density of particles. (default 10)</TextSection>

<h2 id="h.z2gyxuyxnyvw">misc_particlespray</h2>

<TextSection>Shoots particles either when triggered, or continuously when not triggered by anything.</TextSection>

<TextSection>color is the palette color of the particles. (default 47) movedir is the vector distance that the particles will travel before disappearing. (in x y z) NOTE: Play with negative numbers to change the movement direction. delay is the delay between each triggering (default 0.1) duration is the amount of time that it will continue to release particles so that it can release a long stream of particles with only one triggering, count is the number of particles to make each time (default 15) noise is the name of the .wav file to play when triggered.</TextSection>

<TextSection>The two particle effects above are similar but there are some key differences. Take a look at the pd_counter map for some different examples.</TextSection>

<TextSection>You can check out this <a href="https://youtu.be/7-1W6oF6KH4">video</a> tutorial that goes into detail on most of the particle effects above.</TextSection>

<Divider />
