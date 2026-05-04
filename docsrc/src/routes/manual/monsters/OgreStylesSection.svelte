<script>
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image1 from '$lib/assets/manual/monsters/monsters-ogre-styles-01.png';
	import image2 from '$lib/assets/manual/monsters/monsters-ogre-styles-02.png';
	import image3 from '$lib/assets/manual/monsters/monsters-ogre-styles-03.jpg';
</script>

<h2 id="ogre-styles">Ogre Styles</h2>

<FullWidthImage src={image1} alt="Ogre styles reference" />

<table class="table">
	<thead>
		<tr>
			<th>Style</th>
			<th>Description</th>
			<th>Projectile Homing</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>0</td>
			<td>Grenades, default</td>
			<td>No</td>
		</tr>
		<tr>
			<td>1</td>
			<td>Flak Ogre, also seen in Quoth and The Marcher Fortress</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Sniper, shoots a single deadly lava round</td>
			<td>Yes</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Multi-Grenade, Mission Pack 2</td>
			<td>No</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Lava Ogre, shoots Chthon's exploding lava balls</td>
			<td>Yes</td>
		</tr>
	</tbody>
</table>

<FullWidthImage src={image2} alt="Ogre styles example" />

<TextSection>
	You cannot replace `mdl_proj` on an Ogre set to style `3`, but all other projectiles and
	models can be replaced. If you prefer lava spikes for the Flak Ogre, set the Ogre's
	`skin_proj` key to `1`.
</TextSection>

<FullWidthImage src={image3} alt="Lava Ogre example" />

<TextSection>
	Style 4 Ogres shoot Chthon's spinning, explosive lava balls by default. As with most
	other styles, you can replace the projectile model with `mdl_proj` and the projectile
	skin with `skin_proj`.
</TextSection>

<TextSection>
	You can set the `avelocity` key to a custom angle velocity, yaw, pitch and roll, to make
	the projectile rotate faster or slower on other axes. The default is `200 100 300`. You
	can also set this to `0 0 1` to disable spinning so you can use projectile models like
	rockets or spikes that should not rotate but still explode on contact.
</TextSection>

<TextSection>
	You can set the lava ball to home in on targets with the `homing` key described above.
	By default, two sounds are played when lava balls are launched: `snd_misc2`, the sound
	made when Shalraths launch Vore balls, and `snd_attack`, the whoosh sound the lava ball
	makes while flying. Both of these can be customized.
</TextSection>
