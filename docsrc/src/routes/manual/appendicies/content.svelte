<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image27 from '$lib/assets/manual/credits/credits-appendix-b-finding-custom-models-01.png';
	import image32 from '$lib/assets/manual/credits/credits-appendix-c-development-folder-01.png';
	import image6 from '$lib/assets/manual/credits/credits-appendix-b-finding-custom-models-02.png';
	import image96 from '$lib/assets/manual/credits/credits-appendix-c-development-folder-02.png';
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import ImageSection from '$components/ImageSection.svelte';
	import Image from '$components/Image.svelte';
</script>




<Divider />



<h1 id="h.zfwucqmwrkph">Appendices</h1>
<Card color="warning">
	<CardBody>
		A note about key | value pairs. You may notice some strange naming of key fields in progs_dump. For example, the currentammo in a lightning trail relay represents damage. This is because some of the code in progs_dump is from a time when the memory requirements for Quake were high for PCs of the day. Programmers would reuse certain keys to save memory, as each key field took up precious RAM. 25 years later, we have plenty of processing and RAM to dispose of. As a result, some of the newer keys are a bit more intuitive.
	</CardBody>
</Card>

<h2 id="h.dhe52sai7g0l">Appendix A: Included Assets</h2>

<TextSection>Here's a list of assets that are included in the mod with credits.</TextSection>

<h3>Models</h3>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Asset Name</p>
		</td>
		<td>
			<p>Details</p>
		</td>
		<td>
			<p>Credits</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_bpack.mdl</p>
		</td>
		<td>
			<p>Revised backpack model and new skins</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>candle.mdl</p>
		</td>
		<td>
			<p>candle</p>
		</td>
		<td>
			<p>Quake Mission Pack 2</p><p>Dissolution of Eternity (a.k.a.The Rogue Mission Pack or DOE)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>mervup.mdl</p>
		</td>
		<td>
			<p>multi-grenade</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>lspike.mdl</p>
		</td>
		<td>
			<p>laval spike</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>debris.mdl</p>
		</td>
		<td>
			<p>model for breakables</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>g_shotgu.mdl</p>
		</td>
		<td>
			<p>shotgun model</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>spark.mdl</p>
		</td>
		<td>
			<p>spark particle</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>s_null.spr</p>
		</td>
		<td>
			<p>empty sprite for various effects</p>
		</td>
		<td>
			<p>dumptruck_ds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>h_boss.mdl</p>
		</td>
		<td>
			<p>Chthon head based on original boss.mdl</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>s_flame.spr</p>
		</td>
		<td>
			<p>animated fire sprite</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>spike.mdl</p>
		</td>
		<td>
			<p>based on id original</p>
		</td>
		<td>
			<p>added lava skin from DOE to original model</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_armor_sh.mdl</p>
		</td>
		<td>
			<p>armor shard</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_base_key.mdl</p>
		</td>
		<td>
			<p>key based on id original</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_rune_key.mdl</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_wiz_key.mdl</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>soldier.mdl</p>
		</td>
		<td>
			<p>based on id original</p>
		</td>
		<td>
			<p>modded skins by dumptruck_ds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>ogre.mdl</p>
		</td>
		<td>
			<p>based on id original</p>
		</td>
		<td>
			<p>mission pack 2 with some skins by dumptruck_ds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>h_ogre.mdl</p>
		</td>
		<td>
			<p>based on id original</p>
		</td>
		<td>
			<p>mission pack 2</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>enforcer.mdl</p>
		</td>
		<td>
			<p>based on id original</p>
		</td>
		<td>
			<p>with 2 skins by Ijed from ReMakeQuake and additional skins by dumptruck_ds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_h15.mdl</p>
		</td>
		<td>
			<p>rotten healthpack model</p>
		</td>
		<td>
			<p>by Lunaran from Copper</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_h25.mdl</p>
		</td>
		<td>
			<p>normal healthpack model</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_h100.mdl</p>
		</td>
		<td>
			<p>mega healthpack model</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_vial.mdl</p>
		</td>
		<td>
			<p>health vial model</p>
		</td>
		<td>
			<p><a href="https://www.artstation.com/starshipwaters">starshipwaters</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_cells1.mdl</p>
		</td>
		<td>
			<p>box of cells</p>
		</td>
		<td>
			<p>by Lunaran from Copper</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_cells2.mdl</p>
		</td>
		<td>
			<p>large box of cells</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_nails1.mdl</p>
		</td>
		<td>
			<p>box of nails</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_nails2.mdl</p>
		</td>
		<td>
			<p>large box of nails</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_rock1.mdl</p>
		</td>
		<td>
			<p>box of rockets</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_rock2.mdl</p>
		</td>
		<td>
			<p>large box of rockets</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_shell1.mdl</p>
		</td>
		<td>
			<p>box of shells</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>m_shell2.mdl</p>
		</td>
		<td>
			<p>large box of shells</p>
		</td>
		<td>
			<p>same as above</p>
		</td>
	</tr>
	</tbody>
</table>

<h3>Sounds</h3>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Asset Name</p>
		</td>
		<td>
			<p>Details</p>
		</td>
		<td>
			<p>Credits</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_bricks.wav</p><p>pd_metal1.wav</p><p>pd_metal2.wav</p><p>pd_stones1.wav</p><p>pd_wood1.wav</p><p>pd_wood2.wav</p>
		</td>
		<td>
			<p>hard coded breakable sounds</p>
		</td>
		<td>
			<p>dumptruck_ds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_water.wav</p>
		</td>
		<td>
			<p>Underwater sound</p>
		</td>
		<td>
			<p>dumptruck_ds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>elec22k.wav</p>
		</td>
		<td>
			<p>looping electricity sound</p>
		</td>
		<td>
			<p>dumptruck_ds</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>rumble.wav</p>
		</td>
		<td>
			<p>earthquake sound (not great quality)</p>
		</td>
		<td>
			<p>Rogue mission pack</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_armor1_sh.wav</p>
		</td>
		<td>
			<p>armor shard pickup sound</p>
		</td>
		<td>
			<p>modified id sound</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_magic_01.wav</p>
		</td>
		<td>
			<p>looping magical hum</p>
		</td>
		<td>
			<p>dumptruck_ds (using <a href="https://www.warmplace.ru/soft/ans/">Virtual ANS</a>)</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_pop2.wav</p>
		</td>
		<td>
			<p>new pain sound for killable Shub</p>
		</td>
		<td>
			<p>modified id sound</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.g5xe9maoeaf3">Appendix B: Finding Custom Models</h2>

<TextSection>As this manual is being written, Quake is entering its 25th year. Over those years, hundreds of Quake mods have included custom models, many of which are compatible with the stock Quake assets. Below are some of the resources we've used to test with progs_dump. Following that, a short overview of how to extract models and check them for compatibility.</TextSection>

<TextSection>Don't forget to check if you have permission to use mod assets in your projects. Usually this is stated in the readme.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Name</p>
		</td>
		<td>
			<p>Type</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="https://drive.google.com/file/d/1VAFLWqU94TZZEn4bG7Fd-RHWeQqD1b5q/view...usp=sharing">The Keep mod</a></p>
		</td>
		<td>
			<p>mod</p>
		</td>
		<td>
			<p>A huge mod based on the Arcane Dimensions codebase. It's still in development as of December 2020. This mod takes hundreds of monsters and other assets from scores of mods and lumps them into one giant release. This one resource makes it really easy to find monster replacements for the stock id creatures from a variety of mods. <a href="https://www.celephais.net/board/view_thread.php...id=61506">More info.</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="https://www.moddb.com/mods/arcane-dimensions">Arcane Dimensions</a></p>
		</td>
		<td>
			<p>mod</p>
		</td>
		<td>
			<p>Features all kinds of skins for all the traditional id monsters. Versions 1.8 and above, use PAK files. You'll need PakScape to extract assets.<a href="https://www.moddb.com/mods/arcane-dimensions/downloads">https://www.moddb.com/mods/arcane-dimensions/downloads</a><a href="https://www.moddb.com/mods/arcane-dimensions/downloads">Or use 1.7 and below</a> for unpacked assets.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="http://www.quaketastic.com/files/models/chillo_1_7.zip">Chillo&#x27;s Model Pack 1.7</a></p>
		</td>
		<td>
			<p>mod</p>
		</td>
		<td>
			<p>Replacement models for almost every monster.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="https://tomeofpreach.wordpress.com/quoth/">Quoth</a></p>
		</td>
		<td>
			<p>mod</p>
		</td>
		<td>
			<p>Similar to Arcane Dimensions. Some good models and skins that are compatible with the original monsters. Plus lots of other models and sprites.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="https://svn.icculus.org/remakequake/progs/">ReMakeQuake</a></p>
		</td>
		<td>
			<p>mod</p>
		</td>
		<td>
			<p>canceled mod, assets are free to use per the author</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="http://www.quaketastic.com/files/single_player/mods/drakebeta.zip">Drake (beta)</a></p>
		</td>
		<td>
			<p>mod</p>
		</td>
		<td>
			<p>Fun mod with dragons and all kinds of monster skins and misc models.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="ftp://archives.gamers.org/pub/idgames2/">pub/idgames2</a></p>
		</td>
		<td>
			<p>ftp</p>
		</td>
		<td>
			<p>Massive directory of id related content dating back 25+ years. Models, mods, total conversions and more.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="http://www.quaketastic.com/...dir=files/models/">Quaketastic models</a></p>
		</td>
		<td>
			<p>http</p>
		</td>
		<td>
			<p>Another massive collection of models to peruse.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p><a href="http://www.quaketastic.com/...dir=files/single_player/mods/">Quaketastic mods</a></p>
		</td>
		<td>
			<p>http</p>
		</td>
		<td>
			<p>A decent collection of Quake mods.</p>
		</td>
	</tr>
	</tbody>
</table>

<Card color="warning">
			<CardBody>Most engines only support .mdl models. MD3/MD5 models are supported by Ironwail and vkQuake as replacement models, but cannot be used directly and still require a .mdl.</CardBody>
</Card>

<TextSection>Once you have a model you want to use in progs_dump you may need to extract it with <a href="http://www.quaketastic.com/files/tools/windows/misc/pakscape-011.zip">PakScape</a>. Just open the <a href="https://quakewiki.org/wiki/PAK_file">PAK</a>file and click on the progs folder. Drag and drop the model to extract it. Models should be placed under the progs directory in your mod but you can use sub folders to keep them organized.</TextSection>

<TextSection>Remember that you can also use sprites (.spr) in progs_dump with a variety of entities. And of course, sound (.wav) files.</TextSection>
<ImageSection margin="2">
<Image src={image27} alt="Manual illustration" />
</ImageSection>
<TextSection>Next, take a look at the animations and compare them to the original id models in <a href="https://www.moddb.com/games/quake-wrapper/downloads/quake-1-model-viewer-v050-alpha">Quake 1 Model Viewer</a> using the animation tab. You can also just load the models in progs_dump and see if they work!</TextSection>

<ImageSection margin="2">
	<Image src={image6} alt="Manual illustration" />
</ImageSection>

<h2 id="h.nup6u83qwzcr">Appendix C: Development Folder</h2>

<TextSection>The development folder in the main progs_dump mod contains the source files for the sample maps and prefab maps, the entity definition files, a texture wad file and the QuakeC source.</TextSection>

<TextSection>fgd_def</TextSection>

<TextSection>FGD and DEF files are used by map editors to display entity information. progs_dump has four of these files for different applications. Great care has been taken to update these files with as much information from this manual as possible. Also, the light and worldspawn entities have expanded definitions for <a href="https://ericwa.github.io/ericw-tools/">ericw's compiling tools</a>.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>File</p>
		</td>
		<td>
			<p>Details</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_300.def</p>
		</td>
		<td>
			<p>Quake Definition file for use with xRadiant editors like <a href="http://lunaran.com/qe3/">QuakeEd3</a>, <a href="http://icculus.org/gtkradiant/">GTKRadiant</a> and <a href="https://garux.github.io/NRC/">NetRadiant-Custom</a>. <a href="https://kristianduske.com/trenchbroom/">TrenchBroom</a><a href="https://kristianduske.com/trenchbroom/">https://kristianduske.com/trenchbroom/</a>also supports the.def format.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_300_JACK.fgd</p>
		</td>
		<td>
			<p>Used with <a href="https://crystice.com/jack/">J.A.C.K.</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_300.fgd</p>
		</td>
		<td>
			<p>Used with <a href="https://kristianduske.com/trenchbroom/">TrenchBroom</a></p>
		</td>
	</tr>
	</tbody>
</table>

<TextSection>If you use the pd_300 fgd you will see custom models in TrenchBroom including skin selections.</TextSection>

<FullWidthImage src={image32} alt="Manual illustration" />

<TextSection>map src</TextSection>

<TextSection>This folder contains the .map files for all the sample and prefab maps as well as the custom debris .map files as described in the custom <a href="#h.h8wieyyvdgdn">breakables</a> section above.</TextSection>

<TextSection>quakec scr</TextSection>

<TextSection>This folder contains the QuakeC source files for the mod. You are free to use these as a basis for a new mod. Please give us credit and include the source files for your mod in the public release. These QuakeC files are also included in the mod_template.zip folder and should always be included with your mod whether you modify them or not.</TextSection>

<TextSection>wads</TextSection>

<TextSection>This is a single wad file containing all of the textures used in the sample maps. This includes key door textures for the included <a href="#h.92t5vsk9y96g">pd_key</a> models. Use this when you refer to the sample files in a map editor. You are free to use any included texture in your own projects.</TextSection>

<FullWidthImage src={image96} alt="Manual illustration" />
