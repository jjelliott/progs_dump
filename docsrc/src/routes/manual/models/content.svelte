<script>
	import Column from '$components/Column.svelte';
	import Columns from '$components/Columns.svelte';
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image114 from '$lib/assets/manual/models/models-misc-model-01.png';
	import image115 from '$lib/assets/manual/models/models-misc-model-02.png';
	import image146 from '$lib/assets/manual/models/models-misc-model-03.png';
</script>

<h1 id="h.u1erp69y8gz1">Custom Models and Sprites</h1>

<h2 id="h.vnmrs5wu7kak">misc_model</h2>

<TextSection>A point entity for displaying models and sprites. A frame range can be given to animate the model. Starting with version 3.0.0, misc_model has many more features including the ability to trigger animations on and off via a target_setstate entity. There are now spawnflags that add gravity, solidity, and new animation options. Additionally, models can be set to Start Hidden and can be toggled off and on. You can also set a custom bounding box size. See below for details.</TextSection>

<FullWidthImage src={image146} alt="Manual illustration" />

<Columns>
	<Column col="6">
		<FullWidthImage src={image115} alt="Manual illustration" />
	</Column>
	<Column col="6">
		<FullWidthImage src={image114} alt="Manual illustration" />
	</Column>
</Columns>

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
			<p>mdl</p>
		</td>
		<td>
			<p>The model to display. Can be of type mdl, bsp, or spr.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>frame</p>
		</td>
		<td>
			<p>Single frame to display. Can also be used to offset the animation starting frame for variations (e.g. when using fire sprites)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>first_frame</p>
		</td>
		<td>
			<p>The starting frame of the animation.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>last_frame</p>
		</td>
		<td>
			<p>The last frame of the animation.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>speed</p>
		</td>
		<td>
			<p>The frames per second of the model's animation. Divide 1 by the fps for this value. (Default 0.1)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>angles</p>
		</td>
		<td>
			<p>pitch roll yaw (up/down, angle, tilt left/right)</p><p>IMPORTANT: In TrenchBroom set the angle (no S) value to 0 if using angles (with an S) key to rotate mdls (see <a href="#h.advscgxrvjju">gib_ section</a>for more info or the video linked below.)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>mdlsz</p>
		</td>
		<td>
			<p>Custom bounding box in x y z</p><p>(default is 32 32 32)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>centeroffset</p>
		</td>
		<td>
			<p>Model center offset (similar to paticles_offset in <a href="#h.z4t06t4aoib0">Custom Item Models</a>)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>spawnflags</p>
		</td>
		<td>
			<p>Gravity - model can ride lifts or trains</p><p>Solid - model has collision box, use mdlsz to set the area</p><p>Back and Forth - will animate back and forth between first_frame and last_frame</p><p>Play count times - will animate a set number of times, use count key</p><p>Start Hidden - The model will not be visible until triggered. You can toggle this on and off with additional triggers.</p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>Here's a link to an <a href="https://youtu.be/uqdf1XPk-34...t=499">older progs_dump video</a> that has some more info and tips for using misc_models in your mod.</TextSection>

<Divider />
