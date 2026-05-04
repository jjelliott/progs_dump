<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image116 from '$lib/assets/manual/keys/keys-item-key-custom-01.png';
	import image24 from '$lib/assets/manual/keys/keys-item-key-custom-02.png';
	import image25 from '$lib/assets/manual/keys/keys-item-key-custom-03.png';
</script>

<h2 id="h.92t5vsk9y96g">item_key_custom</h2>

<TextSection>This allows mappers to use any Quake compatible model, sprite or BSP as a key. We've also included new key models with different color variations. The new key models are not hard-coded, but you can find these in the progs folder and set their paths in the mdl key.</TextSection>

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
			<p>display this single frame of the model, if animated (default 0)<br /><br />NOTE: The key will not display any animation.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>Three new models based on id's original keys are included. One for each worldtype: base, runic and wizard. Each of these has four color variations, also referred to as their skin index: jade (green, skin 0), runic (magenta, skin 1), blood (red, skin 2) and alabaster (gray, skin 3). The <a href="#h.nup6u83qwzcr">development/wads</a> folder has a wad with textures for use with the different styles seen below.</TextSection>

<FullWidthImage src={image25} alt="Manual illustration" />

<FullWidthImage src={image24} alt="Manual illustration" />

<FullWidthImage src={image116} alt="Manual illustration" />

<TextSection>The keyname value is used both for the pickup message and to associate the key with the entity that it unlocks. To make a func_door or trigger_usekey require this key, set the keyname value of that entity so that it matches the keyname value of the item_key_custom entity.</TextSection>

<TextSection>If different item_key_custom entities have the same keyname value, they will be treated as different copies of the same key and may be used interchangeably.</TextSection>

<TextSection>A map may have a maximum of 23 unique keyname values across all entities.</TextSection>

<TextSection>The behavior of an item_key_custom should be as the player expects (based on the behavior of the silver and gold keys), except for the fact that it will not appear as an icon in the player&#x27;s status bar when picked up. This is a limitation of the engine. Finally, there is a sample map called pd_keys you can review.</TextSection>
