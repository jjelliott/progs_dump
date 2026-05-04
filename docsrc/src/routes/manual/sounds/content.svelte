<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
</script>

<h1 id="h.w3isxjolew1d">Custom Sounds</h1>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Custom sound files used with these entities must be in the SOUND folder of your mod (or a sub folder under that SOUND folder.) There is no need to add "sound" in the "noise" path. (e.g. boss2/sight.wav) Most Quake source ports require a mono sound file for custom sounds. Do not use stereo files in your mod except for music.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.o3412p71mt2q">Attenuation</h2>

<TextSection>A note on the "speed" key (a.k.a attenuation factor) in sound entities. Attenuation in Quake means the reduction of a sound over a distance. Here's a table of what the different speed keys mean in progs_dump.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Speed</p>
		</td>
		<td>
			<p>QuakeC name</p>
		</td>
		<td>
			<p>Attenuation effect</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>-1</p>
		</td>
		<td>
			<p>ATTN_NONE</p>
		</td>
		<td>
			<p>heard everywhere</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>1</p>
		</td>
		<td>
			<p>ATTN_NORM</p>
		</td>
		<td>
			<p>fades to zero at 1000 units</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>2</p>
		</td>
		<td>
			<p>ATTN_IDLE</p>
		</td>
		<td>
			<p>fades to zero at 512 units</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>3</p>
		</td>
		<td>
			<p>ATTN_STATIC</p>
		</td>
		<td>
			<p>fades to zero at 341 units</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.phl88cron5wb">play_sound_tiggered</h2>

<TextSection>Play a sound when triggered. Most of these key / value pairs can be left to their defaults. Can be looping or a "one off" sound.</TextSection>

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
			<p>volume</p>
		</td>
		<td>
			<p>how loud (1 default full volume)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise</p>
		</td>
		<td>
			<p>path of the sound to play</p><p>(e.g. blob/sight1.wav)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>impulse</p>
		</td>
		<td>
			<p>sound channel 0-7 (0 automatic is default)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed</p>
		</td>
		<td>
			<p><a href="#h.o3412p71mt2q">attenuation factor</a> (default recommended)</p>
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
			<p>toggle</p>
		</td>
		<td>
			<p>sound can be stopped and started when triggered</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>looping</p>
		</td>
		<td>
			<p>check this and the toggle spawnflag to allow triggered, looping sounds to automatically restart after a save / load</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>You may encounter problems triggering sounds that are far away from the player. If you do, move the sound and trigger closer to each other.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.f3brewh2zd0t">play_sound</h2>

<TextSection>Plays a "one off," non-looped sound at a random interval. Like thunder or a monster sound. IMPORTANT: Do not use looped sounds with this entity. For looped sounds see ambient_general below. Check out this <a href="https://youtu.be/pj7C_igr0bs">video tutorial</a> on creating looping sounds for Quake.</TextSection>

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
			<p>volume</p>
		</td>
		<td>
			<p>how loud (1 is default full volume)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise</p>
		</td>
		<td>
			<p>path of the sound to play</p><p>(e.g. boss2/sight.wav)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>wait</p>
		</td>
		<td>
			<p>random time between sounds (default 20)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>delay</p>
		</td>
		<td>
			<p>minimum delay between sounds (default 2)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>impulse</p>
		</td>
		<td>
			<p>sound channel 0-7 (0 automatic is default)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed</p>
		</td>
		<td>
			<p><a href="#h.o3412p71mt2q">attenuation factor</a></p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.p4yuauz0ogub">ambient_general</h2>

<TextSection>Plays a custom looped sound. Cannot be toggled off or triggered. noise = path of the sound to play (e.g. ambience/suck1.wav)</TextSection>

<h2 id="h.ueyc7ccx6ke">ambient_thunder</h2>

<TextSection>Originally unused in the game. Plays the sound of thunder at a random interval. You only need one of these in your map. It will play everywhere. If you want it to play locally instead, use a <a href="#h.f3brewh2zd0t">play_sound</a> with a different speed setting. The path for the sound is: ambience/thunder1.wav</TextSection>

<h2 id="h.fk5488jczisl">ambient_water1</h2>

<TextSection>Swirling water sound effect. Usually this is added automatically to maps with water when you run VIS. If you want to place these in your map by hand, you can run VIS with the -noambient command line switch.</TextSection>

<h2 id="h.7zc8qtvwh6gg">ambient_wind2</h2>

<TextSection>Howling wind sound effect. Usually this is added automatically to outdoor sections of maps with sky textures. If you want to place these in your map by hand, you can run VIS with the -noambient command line switch.</TextSection>

<h2 id="h.gwy3jzpaupl5">ambient_fire</h2>

<TextSection>This is a simple looping sound from the torches. Use this if you are using custom fire sprites or models. This is the same effect as FireAmbient in earlier versions of progs_dump.</TextSection>

<Divider />
