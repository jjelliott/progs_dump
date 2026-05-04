<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image84 from '$lib/assets/manual/text-tools/text-tools-info-intermissiontext-01.png';
</script>

<h1 id="h.qr7pxnx3juaq">Enhanced Text Tools</h1>

<TextSection>We've added enhanced text entities and other features, starting in progs_dump 3.0.0, that allow for many more storytelling opportunities. These include additions to <a href="#h.ylcfq4atosx">trigger_ changelevel</a> info_intermissiontext and the textstory entities.</TextSection>

<h2 id="h.o2bsllbrv5s9">info_intermissiontext</h2>

<TextSection>Created by ILike80sRock, this is used with a trigger_changelevel entity to display the "Congratulations" graphics and a custom message. These are displayed in the original game at the end of an episode when the player gets a rune, kills a boss or defeats the game. This entity can display multiple "pages" of text before the player warps to the next level. More information on how to use this functionality is described in the <a href="#h.ylcfq4atosx">trigger_changelevel</a> section above.</TextSection>

<FullWidthImage src={image84} alt="Manual illustration" />

<h2 id="h.m90wa6zfbrcs">trigger_textstory</h2>

<TextSection>This new trigger from bmFbr shows long centerprint texts. Messages remain on screen while the player is inside the trigger volume. Can have custom sounds, or be made silent. Horizontal space is limited to 40 characters, so you must place linefeeds (\n) into your text. Use fade_amt to set the background fade to a custom value (default is 160). You can set it to show the message only when the player is facing a certain angle within the trigger. Set the central angle with mangle, and the maximum angle offset with view_ofs (both in &#x27;pitch yaw 0&#x27; format). See illustration below.</TextSection>

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
			<p>fade_amt</p>
		</td>
		<td>
			<p>Set a custom black level for background fade (default is 160)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>mangle</p>
		</td>
		<td>
			<p>Central point of the viewcone, in &#x27;pitch yaw 0&#x27; format</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>message</p>
		</td>
		<td>
			<p>Text of your message. 40 character limit then add \n for new line</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise1</p>
		</td>
		<td>
			<p>Path to custom activation sound. Played when the message is shown. Uses &#x27;misc/talk.wav&#x27; for the default centerprint beep.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise2</p>
		</td>
		<td>
			<p>Path to custom deactivations sound. Played when the message fades away.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>view_ofs</p>
		</td>
		<td>
			<p>Maximum angle offset. Angle offsets from the central viewcone point in each direction, in &#x27;pitch yaw 0&#x27; format</p>
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
			<p>Silent</p>
		</td>
		<td>
			<p>No message sounds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>No background fade</p>
		</td>
		<td>
			<p>Background will not fade to black</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.z7itr5dl7n99">target_textstory</h2>

<TextSection>Point entity version of <a href="#h.m90wa6zfbrcs">trigger_textstory</a> that shows long centerprint texts. Message remains on screen for the duration of wait. Can have custom sounds, or be made silent. Horizontal space is limited to 40 characters, so you must place linefeeds (\n) into your text. Use fade_amt to set the background fade to a custom value (default is 160).</TextSection>

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
			<p>fade_amt</p>
		</td>
		<td>
			<p>Set a custom black level for background fade (default is 160)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>message</p>
		</td>
		<td>
			<p>Text of your message. 40 character limit then add \n for new line</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise1</p>
		</td>
		<td>
			<p>Path to custom activation sound. Played when the message is shown. Uses &#x27;misc/talk.wav&#x27; for the default centerprint beep.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>noise2</p>
		</td>
		<td>
			<p>Path to custom deactivations sound. Played when the message fades away.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>wait</p>
		</td>
		<td>
			<p>Amount of time to display the message.</p>
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
			<p>Silent</p>
		</td>
		<td>
			<p>No message sounds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>No background fade</p>
		</td>
		<td>
			<p>Background will not fade to black</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>The yellow line in this image represents the mangle and the cone represents the view_ofs. I'm using a player to illustrate this but it's the same concept using the trigger_textstory.</TextSection>

<Divider />
