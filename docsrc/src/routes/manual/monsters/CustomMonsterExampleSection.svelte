<script>
	import Card from '$components/Card.svelte';
	import CardBody from '$components/CardBody.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import TextSection from '$components/TextSection.svelte';
	import image1 from '$lib/assets/manual/monsters/monsters-custom-monster-example-01.png';
	import image2 from '$lib/assets/manual/monsters/monsters-custom-monster-example-02.png';
	import image3 from '$lib/assets/manual/monsters/monsters-custom-monster-example-03.png';
	import image4 from '$lib/assets/manual/monsters/monsters-custom-monster-example-04.png';
	import image5 from '$lib/assets/manual/monsters/monsters-custom-monster-example-05.png';
	import image6 from '$lib/assets/manual/monsters/monsters-custom-monster-example-06.png';
	import image7 from '$lib/assets/manual/monsters/monsters-custom-monster-example-07.png';
	import image8 from '$lib/assets/manual/monsters/monsters-custom-monster-example-08.png';
	import image9 from '$lib/assets/manual/monsters/monsters-custom-monster-example-09.png';
	import image10 from '$lib/assets/manual/monsters/monsters-custom-monster-example-10.png';
</script>

<h2 id="custom-monster-example">Custom Monster Example</h2>

<TextSection>
	We've created a plug-in monster template for progs_dump that makes it easy to share or
	reuse custom monsters. The first example is the Hellrath, which you can download
	<a href="http://www.quaketastic.com/files/models/skins/progs_dump_plug_in_monster_hellrath.zip">here</a>.
	This monster uses `monster_shalrath` as a base and adds a replacement body model,
	projectile model, a new skin, new sounds and some modifications to health and damage to
	make a new mini-boss.
</TextSection>

<FullWidthImage src={image1} alt="Hellrath overview" />

<Card color="warning">
	<CardBody>
		Make sure you credit the original creators of the assets you are using in your mod
		readme file, and make sure you are free to modify and distribute their work.
	</CardBody>
</Card>

<TextSection>
	In this section, we'll cover the basic steps used to get this working in progs_dump, but
	not every detail of each application. Some useful apps are:
</TextSection>

<ul>
	<li><a href="https://www.moddb.com/games/quake-wrapper/downloads/quake-1-model-viewer-v050-alpha">Quake 1 Model Viewer</a> for viewing models and animations and importing or exporting skins</li>
	<li><a href="https://www.quaddicted.com/files/tools/adquedit_v13.zip">AdQuedit 1.3</a> for editing many Quake file formats</li>
	<li><a href="https://www.quaddicted.com/files/tools/adquedit_manual_v125.zip">AdQuedit Manual</a></li>
	<li><a href="http://www.quaketastic.com/files/tools/windows/misc/pakscape-011.zip">PakScape</a> for browsing PAK files and exporting contents</li>
	<li><a href="http://www.quaketastic.com/files/tools/QME 3.1_full installed.rar">Quake Model Editor</a>, also known as QME</li>
	<li><a href="http://www.quaketastic.com/files/tools/windows/wad_editors/Texmex_3.4.zip">TexMex</a></li>
	<li><a href="http://www.quaketastic.com/files/tools/windows/wad_editors/Wally-155B.zip">Wally</a></li>
	<li><a href="http://www.quaketastic.com/files/tools/windows/wad_editors/Wally_tutorial.zip">Wally Tutorial</a></li>
	<li><a href="https://www.ocenaudio.com/whatis">Ocenaudio</a> for cross-platform audio editing</li>
	<li><a href="http://grafx2.chez.com/">Grafx2</a> for quick 8-bit-friendly painting</li>
	<li><a href="https://youtu.be/D8YH7kqspu0">Grafx2 Tutorial</a> and <a href="https://lospec.com/pixel-art-software-list">more 8-bit art tools</a></li>
</ul>

<TextSection>
	The first step was choosing a custom Shalrath model created by Chillo as part of the
	<a href="http://www.quaketastic.com/files/models/chillo_model_beta_v1.7.zip">replacement monster pack</a>.
	You can view animation frames and export a `.bmp` skin file with Quake 1 Model Viewer.
	AdQuedit can add skin files without replacing the original, and it uses `.pcx` rather
	than `.bmp`.
</TextSection>

<FullWidthImage src={image2} alt="Model viewer example" />

<TextSection>
	For this monster, the projectile was changed from standard Vore balls to lava projectiles.
	Using Quake 1 Model Viewer, a model flag was changed to add a rocket trail.
</TextSection>

<FullWidthImage src={image3} alt="Projectile trail example" />

<TextSection>
	Next, a new skin was added to the model by painting a lava texture onto the limbs and
	inserting the `.pcx` skin with AdQuedit.
</TextSection>

<FullWidthImage src={image4} alt="Skin editing example 1" />
<FullWidthImage src={image5} alt="Skin editing example 2" />

<Card>
	<CardBody>
		When making skins, they must use the Quake palette. You can learn more on
		<a href="https://quakewiki.org/wiki/Textures">QuakeWiki</a> and in the
		<a href="https://youtu.be/xnSqmHOh3XQ">texture series</a>.
	</CardBody>
</Card>

<TextSection>
	After that, new audio files were created to replace the standard Shalrath sounds. These
	must go into the `sound` directory of your mod. In this case, the subfolder was named
	`hrath_snds`.
</TextSection>

<Card>
	<CardBody>
		The replacement sounds should be roughly the same duration as the originals or they may
		get cut off in-game.
	</CardBody>
</Card>

<TextSection>
	You can audition and extract sounds, models and other files using
	<a href="http://www.quaketastic.com/files/tools/windows/misc/pakscape-011.zip">PakScape</a>.
	Make sure to use a compatible sound format. For Hellrath, `11k`, `16-bit`, mono was used.
</TextSection>

<FullWidthImage src={image6} alt="PakScape example 1" />
<FullWidthImage src={image7} alt="PakScape example 2" />

<TextSection>
	The model files for Hellrath go in their own folder inside your mod folder. Usually Quake
	models are found under the `progs` folder, and you can place your models there if you
	prefer.
</TextSection>

<FullWidthImage src={image8} alt="Model folder example" />

<TextSection>
	Remember: model files go in their own folder or inside `progs`, and sounds must be in a
	folder inside the `sound` folder of your mod.
</TextSection>

<TextSection>
	The next step is to add these paths to your monster in your map editor. The paths to the
	new sounds do not need to include `sound`, so you start with the `hrath_snds` folder as
	seen below. However, if the models are in the `progs` directory, you need to include
	`progs` in that path.
</TextSection>

<TextSection>
	The monster below does `1.5` times the damage of a Shalrath and has `600` health. When a
	player is killed by this monster the obituary will read: "Player was banished by a
	Hellrath".
</TextSection>

<FullWidthImage src={image9} alt="Custom monster key values example" />

<TextSection>
	It's really easy to make a typo since all these entries are done by hand. If your monster
	isn't working, check your paths for typos or other mistakes first. Most of the time,
	that's the culprit.
</TextSection>

<Card>
	<CardBody>
		The process for adding custom models for ammo, health and other items in the game is the
		same as above.
	</CardBody>
</Card>

<h3 id="multiple-targets-targetnames-and-killtargets">Multiple targets, targetnames and killtargets</h3>

<TextSection>
	Most entities can now trigger up to four separate targets at once: `target`, `target2`,
	`target3` and `target4`. They can also have multiple targetnames: `targetname`,
	`targetname2`, `targetname3` and `targetname4`.
</TextSection>

<TextSection>
	Mappers can also create setups with `killtarget` and `killtarget2`. In addition, mappers
	can use `target` and `killtarget` in the same entity, which is not possible in vanilla
	Quake.
</TextSection>

<TextSection>
	Multiple triggers can be used in nearly any combination or order. For example, `target3`
	can trigger `targetname2` in a different entity.
</TextSection>

<FullWidthImage src={image10} alt="Multiple targets example" />

<Card color="warning">
	<CardBody>
		When using path corners or other similar entities, use the primary `target` and
		`targetname` fields for navigation only. The additional numbered fields may not function
		as expected in these cases.
	</CardBody>
</Card>

<TextSection>
	The Quoth mod has the same feature and the same rule of thumb applies here. As Preach
	states on the Quoth tutorial site, a recommended structure is to use the original
	`targetname` field to give entities unique identifiers, and use the remaining fields for
	group triggers.
</TextSection>
