<script>
	import Column from '$components/Column.svelte';
	import Columns from '$components/Columns.svelte';
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image1 from '$lib/assets/manual/cutscenes/cutscenes-creating-a-simple-cutscene-01.png';
	import image117 from '$lib/assets/manual/cutscenes/cutscenes-creating-a-simple-cutscene-02.png';
	import image123 from '$lib/assets/manual/cutscenes/cutscenes-creating-a-simple-cutscene-03.png';
	import image144 from '$lib/assets/manual/cutscenes/cutscenes-creating-a-simple-cutscene-04.png';
	import image57 from '$lib/assets/manual/cutscenes/cutscenes-creating-a-simple-cutscene-05.png';
	import image70 from '$lib/assets/manual/cutscenes/cutscenes-cutscene-best-practices-01.png';
	import image71 from '$lib/assets/manual/cutscenes/cutscenes-cutscenes-01.png';
	import image91 from '$lib/assets/manual/cutscenes/cutscenes-creating-a-simple-cutscene-06.png';
</script>

<h1 id="h.hokm763j3wp0">Cutscenes</h1>

<Columns>
	<Column col="4">
		<FullWidthImage src={image71} alt="Manual illustration" />
	</Column>
	<Column col="8">
		<TextSection>The cutscene system is taken from the <a href="http://www.quaketastic.com/files/single_player/mods/drakebeta.zip">Drake mod beta devkit</a>. Scenes take a bit of testing and tweaking to set up, so please read this section carefully if you want to include them in your projects. One missing key | value or typo will blow up the whole operation! It's best to start with a small test level and learn how they work before moving forward. Also play very close attention to the "best practices" section below!</TextSection>
		<TextSection>NOTE: unlike many Quake entities, there are key | value pairs that are required to be set even though they may not seem to do anything.</TextSection>
		<TextSection>Your first step should be to play the sample map pd_cutscenes, then open the map in your map editor and take a look at the different setups. There's a secret area of the map that shows the most simple setup, with one message and one camera. There are also three other, more complex setups in the map. Cutscenes can be skipped by pressing a weapon key or any impulse command.</TextSection>
		<TextSection>There are a minimum of four entities required to make a cutscene work.</TextSection>
		<TextSection>First, a trigger_camera that the player will enter to begin the scene. You can also use a trigger_camera_point if you need to trigger your scene without the player touching the trigger. You will see both methods in the sample map.</TextSection>
		<TextSection>The second required entity is an info_movie_camera. This will "aim" the camera at the third required entity: an info_focal_point.</TextSection>
		<TextSection>The fourth required entity is an info_script. This controls how long the player is in the scene, triggers events and holds any text messages that will play during the cutscene.</TextSection>
	</Column>
</Columns>

<h2 id="h.3knid8e9stq">trigger_camera</h2>

<TextSection>This will begin a cutscene when touched. Some of these keys need to match the corresponding fields in the targeted info_movie_camera and info_script. IMPORTANT: most of the following keys are required unless noted.</TextSection>

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
			<p>focal_point</p>
		</td>
		<td>
			<p>Point the targeted camera at this point.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>script</p>
		</td>
		<td>
			<p>Match script_num field of the info_script</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>script_delay</p>
		</td>
		<td>
			<p>The amount of time to stay on the first script page. NOTE: You can usually set this to 1 because the script_delay key of the matching info_script will override this value.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>target</p>
		</td>
		<td>
			<p>Targetname of the first camera in the cutscene.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>targetname (optional)</p>
		</td>
		<td>
			<p>If the trigger_camera has a targetname, it will be dormant until triggered.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.483o3dm2mt5e">info_movie_camera</h2>

<TextSection>This is the target of the trigger_camera and controls the viewport of the cutscene. When using multiple cameras in a sequence, you need at least three cameras (see "complex cutscenes" below).</TextSection>

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
			<p>focal_point</p>
		</td>
		<td>
			<p>Point the camera at this point.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>targetname</p>
		</td>
		<td>
			<p>The name of this camera.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>delay (optional)</p>
		</td>
		<td>
			<p>When the camera moves, don&#x27;t track the focal_point's position, keep the initial view angle.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed (optional)</p>
		</td>
		<td>
			<p>This controls the rate of travel to this camera in (Quake units per second) from another camera.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>wait (optional)</p>
		</td>
		<td>
			<p>Wait here in seconds, before moving to next camera if part of a sequence</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>target (optional)</p>
		</td>
		<td>
			<p>targetname of the next info_movie_camera in a sequence.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.jbvpmpbdqx2r">info_focal_point</h2>

<TextSection>This is the point that the camera will face. It should have a targetname value matching the camera_trigger and info_movie_camera's focal_point fields. When using multiple cameras the focal points can change (see "complex cutscenes" below).</TextSection>

<h2 id="h.vfgt381xtd67">info_script</h2>

<TextSection>This controls the on-screen timing and the optional message text fields.</TextSection>

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
			<p>script_num</p>
		</td>
		<td>
			<p>This should match the script field of the trigger_camera or trigger_camera_point. IMPORTANT: Every script_num in a map needs to be unique!</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>next_script</p>
		</td>
		<td>
			<p>This is the script_num field of the next info_script, if part of a sequence. Set to zero if this is the last script in a series.</p><p>IMPORTANT: This value must be set by hand even if the number is zero! This is unlike almost every other entity field in Quake mapping! Your cutscene will fail without this set.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>script_delay</p>
		</td>
		<td>
			<p>How many seconds to stay on this script. This overrides the same key on trigger_camera.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>message (optional)</p>
		</td>
		<td>
			<p>Optional text that will stay on screen for the amount of time set in script_delay. It's safest to limit this to a max of 64 characters.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>target1-4 (optional)</p>
		</td>
		<td>
			<p>Use these fields to trigger other events in time with the current script. Use trigger_relays if you need to killtarget something.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.fhqa9cpwniuv">info_script_sound</h2>

<TextSection>You can use this optional entity to add a sound when text is displayed or you can even trigger custom sounds and add dialogue to your scenes!</TextSection>

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
			<p>sounds</p>
		</td>
		<td>
			<p>Default Quake sounds for messages. Select 4 if you want to use a custom sound file.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise1</p>
		</td>
		<td>
			<p>Path to custom sound file. Requires sounds key set to 4.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>targetname</p>
		</td>
		<td>
			<p>Name of entity. You can use this multiple times in the same level but note the sound is directional.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.whxzzlmkzh2b">Creating a Simple Cutscene</h2>

<TextSection>Create a trigger_camera brush and give it these key | values:</TextSection>

<FullWidthImage src={image1} alt="Manual illustration" />

<TextSection>Next add an info_movie_camera and give it these key | values:</TextSection>

<TextSection><br /><img src={image144} alt="Manual illustration" style="width: 100%" /></TextSection>

<TextSection>Notice they both have the same focal_point key. Now create that info_focal_point give it these key | values:</TextSection>

<FullWidthImage src={image117} alt="Manual illustration" />

<TextSection>Now for the info_script. Note the script_num matches the script key from trigger_camera. The next_script value is set by hand to zero, this is really important to add or your cutscene will break! It's set to zero, because it's the last script of the scene.</TextSection>

<TextSection><br /><img src={image57} alt="Manual illustration" style="width: 100%" /><br /></TextSection>

<TextSection>The length of the scene is controlled by the script_delay key in the info_script. Leave the message key blank if you just want a shot without text. Now you can move the focal point and camera around for your desired "angle". The following screenshots show in-editor and then the <img src={image123} alt="Manual illustration" style="width: 100%" />in-game vantage points. <img src={image91} alt="Manual illustration" style="width: 100%" /></TextSection>

<h2 id="h.d59mlxskk86e">Complex Cutscenes</h2>

<TextSection>You can add more cameras, scripts and focal points for a more complex scene. You can also animate the camera from one point to another but getting good looking "shots" takes a bit of time and tinkering.</TextSection>

<TextSection>I've created smaller demo levels for easy reference in addition to the pd_cutcenes map. These maps are not accessible from the progs_dump start map but you can load them via the console.</TextSection>

<TextSection>Here's what each map demonstrates:</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Map Name</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_cutscn_simple</p>
		</td>
		<td>
			<p>A static camera, one message scene.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_cutscn_tracking</p>
		</td>
		<td>
			<p>Animated camera between two points with two messages and a blank script between them for timing.</p><p>Notice how the delay key is set on all the cameras and only one focal point is needed. This makes each camera focus in the same direction for each move.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_cutscn_cuts</p>
		</td>
		<td>
			<p>Scene that "cuts" between three vantage points, with three separate focal points.</p><p>Notice how the speed key is set to 999999 to make the move nearly instantaneous.<br /><br />You may still see a "flash frame" between the edits here. There's no real way around this.</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>When moving the camera, even between just two points, you will need three info_movie_cameras. (This is due to some quirks in the original QuakeC and took me a long time to figure out!) If you only want two vantage points in your scene, simply use the wait key on the second to last camera. Set this to a longer amount of time than is controlled by the script_delay key in your info_script for that section of the cutscene. You can see this clearly in pd_cutscn_tracking and in pd_cutscenes.</p>
		</td>
	</tr>
	</tbody>
</table>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Playback of cutscenes is smoother in the FTE Quake engine than in other popular engines. This is a limitation on the engine side. So if cut scenes are important to your project, you may want to target that engine.</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.r3tlghwqkblp">Cutscene Best Practices</h2>

<ul>
	<li>Make small test maps to set up your cutscenes. Scenes require a lot of testing and tweaking. When they are working, paste them into your map and adjust as needed.</li>
	<li>Do not quit the game while in a cutscene, this will reset your mouse sensitivity and console viewsize. Add this info in the readme for your mod so players know not to quit!</li>
	<li>Keep your cutscenes as simple as possible. Things can break very quickly as you ramp up the complexity.</li>
	<li>Timing is controlled in two places when using multiple cameras. (`script_delay` in `info_script` and `wait` in `info_movie_camera`) That makes it harder to make small changes. Break up longer sequences into smaller parts.</li>
	<li>If you move the camera, keep the move on the same axis as the focal point. Any panning or tilting of the viewport will cause the screen to judder. It looks terrible and should be avoided.</li>
	<li>Camera moves in X and Y will display a bit of "player bob". Play with the `speed` key to make the move faster and it won't be as apparent.</li>
	<li>As in other Quake entities, you can add a line break in a message by adding `\n` with no space before the text of the second line. Here I've added two to make a blank line between sentences.</li>
	<li>Do not reuse `info_script` entities for different cutscenes. Things will break. You can reuse `info_movie_camera` entities as long as they are triggered by different `trigger_camera` entities.</li>
	<li>As mentioned above, `info_script_sound` entities can be reused. Be aware that because of the way Quake handles audio, the sound direction can change depending on where the entity is in relation to the camera. If you have sound coming from only one direction, center the `info_script_sound` on the focal point of the camera.</li>
	<li>Don't overdo it. Quake is a fast paced game. Few players want to watch a three hour Quake movie with terrible voice acting!</li>
</ul>

<FullWidthImage src={image70} alt="Manual illustration" />

<Divider />
