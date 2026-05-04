<script>
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image from '$lib/assets/manual/monsters/monsters-shambler-styles-01.jpg';
</script>

<h2 id="shambler-styles">Shambler Styles</h2>

<TextSection>
	A Shambler set to style `1` will throw Chthon's spinning, explosive lava balls. As with
	most other styles, you can replace the projectile model with `mdl_proj` and the
	projectile skin with `skin_proj`.
</TextSection>

<TextSection>
	You can set the `avelocity` key to a custom angle velocity, yaw, pitch and roll, to make
	the projectile rotate faster or slower on other axes. The default is `200 100 300`. You
	can also set this to `0 0 1` to disable spinning so you can use projectile models like
	rockets or spikes that should not rotate but still explode on contact.
</TextSection>

<TextSection>
	You can set the lava ball to home in on targets with the `homing` key described above.
	By default, `snd_attack` is the whoosh sound the lava ball makes while flying, and this
	can be customized.
</TextSection>

<FullWidthImage src={image} alt="Shambler style example" />
