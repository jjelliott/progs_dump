<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image10 from '$lib/assets/manual/breakables/breakables-func-breakable-01.png';
	import image100 from '$lib/assets/manual/breakables/breakables-func-breakable-02.png';
	import image103 from '$lib/assets/manual/breakables/breakables-func-breakable-03.png';
	import image104 from '$lib/assets/manual/breakables/breakables-func-breakable-04.png';
	import image107 from '$lib/assets/manual/breakables/breakables-func-breakable-05.png';
	import image11 from '$lib/assets/manual/breakables/breakables-func-breakable-06.png';
	import image119 from '$lib/assets/manual/breakables/breakables-func-breakable-07.png';
	import image121 from '$lib/assets/manual/breakables/breakables-func-breakable-08.png';
	import image122 from '$lib/assets/manual/breakables/breakables-func-breakable-09.png';
	import image124 from '$lib/assets/manual/breakables/breakables-func-breakable-10.png';
	import image13 from '$lib/assets/manual/breakables/breakables-func-breakable-11.png';
	import image131 from '$lib/assets/manual/breakables/breakables-func-breakable-12.png';
	import image132 from '$lib/assets/manual/breakables/breakables-func-breakable-13.png';
	import image134 from '$lib/assets/manual/breakables/breakables-func-breakable-14.png';
	import image140 from '$lib/assets/manual/breakables/breakables-func-breakable-15.png';
	import image141 from '$lib/assets/manual/breakables/breakables-func-breakable-16.png';
	import image145 from '$lib/assets/manual/breakables/breakables-func-breakable-17.png';
	import image17 from '$lib/assets/manual/breakables/breakables-func-breakable-18.png';
	import image19 from '$lib/assets/manual/breakables/breakables-func-breakable-19.png';
	import image31 from '$lib/assets/manual/breakables/breakables-func-breakable-20.png';
	import image33 from '$lib/assets/manual/breakables/breakables-func-breakable-21.png';
	import image45 from '$lib/assets/manual/breakables/breakables-func-breakable-22.png';
	import image47 from '$lib/assets/manual/breakables/breakables-func-breakable-23.png';
	import image51 from '$lib/assets/manual/breakables/breakables-func-breakable-24.png';
	import image53 from '$lib/assets/manual/breakables/breakables-func-breakable-25.png';
	import image55 from '$lib/assets/manual/breakables/breakables-func-breakable-26.png';
	import image61 from '$lib/assets/manual/breakables/breakables-func-breakable-27.png';
	import image63 from '$lib/assets/manual/breakables/breakables-func-breakable-28.png';
	import image65 from '$lib/assets/manual/breakables/breakables-func-breakable-29.png';
	import image80 from '$lib/assets/manual/breakables/breakables-func-breakable-30.png';
	import image81 from '$lib/assets/manual/breakables/breakables-func-breakable-31.png';
	import image85 from '$lib/assets/manual/breakables/breakables-func-breakable-32.png';
	import image9 from '$lib/assets/manual/breakables/breakables-func-breakable-33.png';
	import image93 from '$lib/assets/manual/breakables/breakables-func-breakable-34.png';
	import image99 from '$lib/assets/manual/breakables/breakables-func-breakable-35.png';
	import Image from '$components/Image.svelte';
	import ImageSection from '$components/ImageSection.svelte';
	import CardBody from '$components/CardBody.svelte';
	import Card from '$components/Card.svelte';
</script>

<h1 id="h.h8wieyyvdgdn">Breakables</h1>

<h2 id="h.sn3a95rmwiwd">func_breakable</h2>

<TextSection>Breakables may seem overwhelming to new mappers, however it's not as complicated as it looks. Also, there are two methods to choose from. One is the Built-in (easy) method and the other is the Custom method (more flexible.)</TextSection>

<h3 id="breakables-built-in">The Built-in Method</h3>
<TextSection>Create your brush and make it a func_breakable. You can ignore any keys that begin with brk or breakable. Those are used with the custom method. With the built-in method you will set the style to one of thirty-two options from the original id1 texture wads listed below. By default, the breakable spawn 5 pieces of debris. You can change this amount with the cnt key/value. The default health of the brush is 20.There are placeholder sounds but you can use the noise1 key to set a custom sound path. If you give the breakable a targetname it will only break when triggered. Use the Explosion spawnflag for an explosive brush. Use the dmg key to set a custom damage value. You can also use the No Monster Damage spawnflag to keep monsters from breaking the brush. As with monsters, you can use the drop_item key to spawn a Silver or Gold key, vial or armor shards upon breaking.</TextSection>

<table class="table" style="max-height: 400px; overflow-y:scroll">
	<tbody>
	<tr>
		<td>
			<p>Style</p>
		</td>
		<td>
			<p>Texture basis</p>
		</td>
		<td>
			<p>Image</p>
		</td>
		<td>
			<p>Description</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>0</p>
		</td>
		<td>
			<p>custom</p>
		</td>
		<td>
			<p><img src={image10} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Green Metal (default)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>1</p>
		</td>
		<td>
			<p>custom</p>
		</td>
		<td>
			<p><img src={image53} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Red Metal</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>2</p>
		</td>
		<td>
			<p>custom</p>
		</td>
		<td>
			<p><img src={image13} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Concrete</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>3</p>
		</td>
		<td>
			<p>wood1_1</p>
		</td>
		<td>
			<p><img src={image140} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Pine wood</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>4</p>
		</td>
		<td>
			<p>wizwood1_3</p>
		</td>
		<td>
			<p><img src={image119} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Brown wood</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>5</p>
		</td>
		<td>
			<p>dung01_2</p>
		</td>
		<td>
			<p><img src={image134} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Red wood</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>6</p>
		</td>
		<td>
			<p>window02_1</p>
		</td>
		<td>
			<p><img src={image17} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Stained Glass Yellow Flames</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>7</p>
		</td>
		<td>
			<p>window01_4</p>
		</td>
		<td>
			<p><img src={image121} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Stained Glass Red Rays</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>8</p>
		</td>
		<td>
			<p>window01_3</p>
		</td>
		<td>
			<p><img src={image141} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Stained Glass Yellow Dragon</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>9</p>
		</td>
		<td>
			<p>window01_2</p>
		</td>
		<td>
			<p><img src={image99} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Stained Glass Blue Dragon</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>10</p>
		</td>
		<td>
			<p>window01_1</p>
		</td>
		<td>
			<p><img src={image122} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Stained Glass Red Dragon</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>11</p>
		</td>
		<td>
			<p>cop2_3</p>
		</td>
		<td>
			<p><img src={image11} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Light Copper</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>12</p>
		</td>
		<td>
			<p>cop1_1</p>
		</td>
		<td>
			<p><img src={image107} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Dark Copper</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>13</p>
		</td>
		<td>
			<p>wiz1_4</p>
		</td>
		<td>
			<p><img src={image132} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Tan Bricks Large</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>14</p>
		</td>
		<td>
			<p>wbrick1_5</p>
		</td>
		<td>
			<p><img src={image19} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Brown Bricks Large</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>15</p>
		</td>
		<td>
			<p>wswamp2_1</p>
		</td>
		<td>
			<p><img src={image100} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Green Bricks Large</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>16</p>
		</td>
		<td>
			<p>tlight08</p>
		</td>
		<td>
			<p><img src={image9} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Generic Light Brown</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>17</p>
		</td>
		<td>
			<p>comp1_5</p>
		</td>
		<td>
			<p><img src={image47} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Red Brown Computer</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>18</p>
		</td>
		<td>
			<p>comp1_1</p>
		</td>
		<td>
			<p><img src={image55} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Gray Black Computer</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>19</p>
		</td>
		<td>
			<p>metal4_5</p>
		</td>
		<td>
			<p><img src={image145} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Blue Green Metal</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>20</p>
		</td>
		<td>
			<p>metal4_4</p>
		</td>
		<td>
			<p><img src={image104} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Blue Green Runic Wall</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>21</p>
		</td>
		<td>
			<p>metal2_2</p>
		</td>
		<td>
			<p><img src={image45} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Brown Metal</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>22</p>
		</td>
		<td>
			<p>metal1_3</p>
		</td>
		<td>
			<p><img src={image80} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Dark Brown Metal</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>23</p>
		</td>
		<td>
			<p>metal1_2</p>
		</td>
		<td>
			<p><img src={image65} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Medium Brown Metal</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>24</p>
		</td>
		<td>
			<p>m5_8</p>
		</td>
		<td>
			<p><img src={image31} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Blue Metal</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>25</p>
		</td>
		<td>
			<p>city8_2</p>
		</td>
		<td>
			<p><img src={image81} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Green Stonework</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>26</p>
		</td>
		<td>
			<p>city6_7</p>
		</td>
		<td>
			<p><img src={image33} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Blue Stonework</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>27</p>
		</td>
		<td>
			<p>city2_8</p>
		</td>
		<td>
			<p><img src={image93} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Brown Bricks</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>28</p>
		</td>
		<td>
			<p>city2_7</p>
		</td>
		<td>
			<p><img src={image61} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Tan Blue Bricks</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>29</p>
		</td>
		<td>
			<p>city2_1</p>
		</td>
		<td>
			<p><img src={image63} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Red Bricks</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>30</p>
		</td>
		<td>
			<p>city2_5</p>
		</td>
		<td>
			<p><img src={image131} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Blue Bricks</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>31</p>
		</td>
		<td>
			<p>wizmet1_2</p>
		</td>
		<td>
			<p><img src={image51} alt="Manual illustration" style="width: 100%" /></p>
		</td>
		<td>
			<p>Metal Rivets</p>
		</td>
	</tr>
	</tbody>
</table>

<h3 id="breakables-custom">The Custom Method</h3>
<TextSection>This method uses external, custom models (.mdl format) or brush models (.bsp format) instead of the built-in system. You can make small pieces of debris by shaping them in a level editor and compiling them into a .bsp (See Creating Debris below.)</TextSection>
<ImageSection margin="4">
<Image src={image124} alt="Manual illustration" />
</ImageSection>
<TextSection>You can also use .bsps from other mods (check if you have permission to do so.) In the example below, we are only using one piece and duplicating it when the brush is "broken." Set the Use custom mdls or bsp models spawnflag to enable this mode. Then set the path to the .bsp or model in break_template1. The brk_obj_count1 determines how many instances of that bsp will be used. You can have 5 different pieces of debris total (break_template1-5) and control how many instances each of those templates spawns with brk_obj_count1-5. noise1 is the path to the sound when breaking. Style and cnt are not used in this method but health and dmg are.</TextSection>

<ImageSection margin="4">
	<Image src={image85} alt="Manual illustration" />
</ImageSection>

<TextSection>Creating debris</TextSection>

<TextSection>You can create break_templates as tiny maps and compile them into bsps. Create one piece at a time as their own map file. Create the debris at the center of the map (origin 0, 0, 0) Compile with qbsp.exe and light. No need to run vis.exe on these. You can add a light key/value to the Worldspawn to uniformly light the piece of debris.</TextSection>

<ImageSection margin="4">
<FullWidthImage src={image103} alt="Manual illustration" />
</ImageSection>
<TextSection>Place these pieces in your maps folder or a subfolder under maps called debris or breakables and remember to include these when you distribute your map.</TextSection>

<Card color="warning">
	<CardBody>
		If you want debris to fall during an earthquake or similar event, use a skip texture to create an invisible breakable. Make sure the player cannot touch the brush, as skip textured brushes have collision. Clip textures won't work for this. You can see an example of this in the pd_bosses sample map.
	</CardBody>
</Card>
<Divider />
