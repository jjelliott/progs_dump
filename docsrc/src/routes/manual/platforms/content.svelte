<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image130 from '$lib/assets/manual/platforms/platforms-func-new-plat-01.png';
	import image86 from '$lib/assets/manual/platforms/platforms-func-elvtr-button-01.png';
</script>

<h1 id="h.4obr3w29jpyn">Enhanced Platforms</h1>

<h2 id="h.ot2uaamkqoxo">func_new_plat</h2>

<TextSection>This entity adds new capabilities to plats. It uses spawnflags to dramatically change its behavior. As with the standard plat, build your plat in the raised position so the entity will be lit correctly when you compile your map.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>You must use one of the following spawnflags with func_new_plat. Even though they use the same entity name, each spawnflag creates a very different plat.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>Spawnflag 1: Setting the Plat Start at Top spawnflag creates a plat that starts at the top and when triggered, goes down, waits, then comes back up. health = number of seconds to wait (default 5)</TextSection>

<TextSection>Spawnflag 2: Setting Toggle Plat creates a plat that will change between the top and bottom each time it is triggered.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>You must use the height key when Toggle Plat is used. Use a negative height number to start the plat off in a lower position.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>Spawnflag 16: Plat2 creates a plat in the bottom position, just like the standard plat. If a plat2 is the target of a trigger, it will be disabled in the lowered position until it has been triggered. Delay is the time before the plat returns to its original position.</TextSection>

<TextSection>You can set the height to tweak the amount of lip needed. See The Gallery map for an example.<br /></TextSection>

<FullWidthImage src={image130} alt="Manual illustration" />

<Divider />

<h1 id="h.e9c0ch71g8c4">Elevators</h1>

<h2 id="h.6ts1iegyg24u">func_elvtr_button</h2>

<TextSection>This entity turns a func_new_plat into a multi-floor elevator. Here are the steps to follow to create one. You can see this setup in the pd_elevator demo map:</TextSection>

<TextSection>First, create a func_new_plat. Select the Elevator spawnflag (4). Set the cnt key to the number of floors (3 in the demo map). Next, set the height key to the vertical distance between floors (256 in the demo map). Then, give the func_new_plat a targetname.</TextSection>

<TextSection>By default, the elevator starts at the bottom floor, so that&#x27;s where the func_new_plat needs to be positioned in the editor. Alternatively, if the mapper wants it to start at the top floor, they can manually position the bmodel at the top floor and set spawnflag (8) Elevator Start at Top.</TextSection>

<TextSection>With the func_new_plat done, create any number of func_elvtr_button entities. Make each func_elvtr_button target the func_new_plat. A func_elvtr_button is an &quot;up&quot; button by default. To make it a &quot;down&quot; button, use the spawnflag Down Button.</TextSection>

<TextSection>When the spawnflags are set to elevator the wait key on a func_new_plat is defaulted to zero. This means the player will be able to hit another button right away between floors as seen in the demo map. The wait key on a func_elvtr_button behaves just as a regular func_button would, controlling how long before you can hit a button each subsequent time.</TextSection>

<TextSection>NOTE: any func_elvtr_button will act as a &quot;call&quot; button if the elevator isn&#x27;t already at that floor.</TextSection>

<FullWidthImage src={image86} alt="Manual illustration" />

<Divider />

<h1 id="h.ncstqi7070n0">Fog System</h1>

<TextSection>Starting in version 3.0.0, progs_dump has a new fog system that allows mappers to change fog values over time or distance. One example of this would be an outdoor area with one fog color and density and when the player moves inside an indoor area these values change. These new entities are based on The <a href="http://lunaran.com/copper/">Copper</a> mod's implementation with changes that were incorporated into the <a href="https://alkalinequake.wordpress.com/">Alkaline</a> mod by bmFbr. They also work similarly to the fog triggers in <a href="https://www.moddb.com/mods/arcane-dimensions">Arcane Dimensions</a>.</TextSection>

<TextSection>Most modern Quake engines feature a fog system and most of these are identical since they all stem from the same source code. Usually, a mapper can simply set a global fog density and color in the worldspawn entity. It's important to note that these triggers don't use these values. Lunaran explains all this in detail in the Copper manual:</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>An important thing to remember: the fog key / value that goes on Worldspawn doesn&#x27;t interact with this system. It is a feature of various engines (such as those in the Fitzquake family) and isn&#x27;t interpreted by game code. The reason for this is that it&#x27;s interpreted as four values (one for density and three for color) and set by the engine at load time. The numeric fields that are passed on to the game code (ie Copper), however, can only be one value (a float) or three (a vector). If you set fog in your world with a fog parameter on worldspawn, and never bother with fog_color and fog_density on any entities, you&#x27;ll get the usual static global fog the way it&#x27;s always worked. Color and density on a player start will be evaluated on the first frame of gameplay, and will override any fog set by the engine.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>If you are planning to use the fog system in progs_dump, use the key | values in the various controller entities instead of setting this in the worldspawn.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>These fog entities can cause slowdowns and other issues if your triggers are too large. Also, a bug in most quake engine ports will reset the eye position smoothing that happens when climbing stairs or riding a plat on every frame that a &#x27;stuffcmd&#x27; is sent, so fog transitions during upwards motion will cause noticeable stuttering.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>If you want to learn more about how fog is used in Quake check out my Skyboxes and Fog <a href="https://youtu.be/vIXBcMWw_X4">tutorial</a> on Youtube. There's also some good information on the VDU <a href="https://valvedev.info/guides/features-of-modern-quake-source-ports/">website</a>.</TextSection>

<h2 id="h.sv5fws3339qa">trigger_fogblend</h2>

<TextSection>Acts as a smoothly blending portal between two zones of different fog. Sets the fog for any client passing through it, blending their global fog settings between fog_color and fog_density and fog_color2 and fog_density2 proportional to their position within the trigger.</TextSection>

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
			<p>fog_density</p>
		</td>
		<td>
			<p>Start Fog Density (e.g. 0.3)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>fog_color</p>
		</td>
		<td>
			<p>Start Fog Color (e.g. 0.25 0.25 0.25)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>fog_density2</p>
		</td>
		<td>
			<p>End Fog Density</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>fog_color2</p>
		</td>
		<td>
			<p>End Fog Color</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>angle</p>
		</td>
		<td>
			<p>The axis of motion on which the blend happens is defined by angle, pointing to whatever zone has color2 and density2. Trigger therefore has two &#x27;sides&#x27;: the side that angle points to, and the opposite side.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>distance</p>
		</td>
		<td>
			<p>Override the length of the blend period in world units - defaults to bounds size on &#x27;angle&#x27; otherwise. This is only useful for diagonal triggers.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.ckdvl1dx0j6y">target_fogblend</h2>

<TextSection>Activator&#x27;s fog will be blended over time from start to end values.</TextSection>

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
			<p>fog_density</p>
		</td>
		<td>
			<p>Start Fog Density (e.g. 0.3)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>fog_color</p>
		</td>
		<td>
			<p>Start Fog Color (e.g. 0.25 0.25 0.25)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>fog_density2</p>
		</td>
		<td>
			<p>End Fog Density</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>fog_color2</p>
		</td>
		<td>
			<p>End Fog Color</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>angle</p>
		</td>
		<td>
			<p>The axis of motion on which the blend happens is defined by angle, pointing to whatever zone has color2 and density2. Trigger therefore has two &#x27;sides&#x27;: the side that angle points to, and the opposite side.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>delay</p>
		</td>
		<td>
			<p>Pause before starting blend</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed</p>
		</td>
		<td>
			<p>Time to blend to fog2 (-1 for instant)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed2</p>
		</td>
		<td>
			<p>Time to blend back, if different than speed (-1 for instant)</p>
		</td>
	</tr>
	</tbody>
</table>

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
			<p>1</p>
		</td>
		<td>
			<p>One-Way Only</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>2</p>
		</td>
		<td>
			<p>Reverse Start/End</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>4</p>
		</td>
		<td>
			<p>All clients</p>
		</td>
	</tr>
	</tbody>
</table>

<Divider />
