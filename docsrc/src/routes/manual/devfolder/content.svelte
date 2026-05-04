<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
	import image32 from '$lib/assets/manual/devfolder/devfolder-appendix-c-development-folder-01.png';
	import image96 from '$lib/assets/manual/devfolder/devfolder-appendix-c-development-folder-02.png';
</script>

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
