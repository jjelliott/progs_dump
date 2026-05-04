<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
</script>

<h1 id="h.qqmzpogkaqt4">Sample maps</h1>

<TextSection>You can find these in the maps folder along with a wad file containing all the textures used in the development folder. You are welcome to copy and paste the entity setups and adjust as needed to use them in your maps. Please do not copy brushes or geometry from these maps. The following chart shows what examples exist in each map. Not all entities are demonstrated in the sample maps. Prefab maps are more simple in presentation, but are specifically designed for you to copy and paste more complex setups.</TextSection>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>Map</p>
		</td>
		<td>
			<p>Entity Setup Examples</p>
		</td>
		<td>
			<p>Notes</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_breakables</p>
		</td>
		<td>
			<p>func_breakable, misc_candle</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_counter</p>
		</td>
		<td>
			<p>func_counter, func_oncount, misc_particle, misc_particle_stream, misc_particlespray</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_cutscenes</p>
		</td>
		<td>
			<p>trigger_look, info_movie_camera, info_focal_point, info_script, info_script_sound, trigger_changemusic, trigger_cdtrack</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_elevator</p>
		</td>
		<td>
			<p>func_new_plat, func_elvtr_button</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_ladders</p>
		</td>
		<td>
			<p>trigger_ladder, func_particlefield, misc_sparks, func_breaklable, func_togglewall</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_lasers</p>
		</td>
		<td>
			<p>func_laser, ltrail_start,ltrail_relay, ltrail_end, switchable light styles, misc_particle_stream, trigger spawned monsters</p>
		</td>
		<td>
			<p>Can you find the YA secret...</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_lightning</p>
		</td>
		<td>
			<p>func_counter, ltrail_start,ltrail_relay, ltrail_end, trap_switched_shooter</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_lava</p>
		</td>
		<td>
			<p>play_lavasplash, func_fall, trigger_shake, misc_particle, func_train (triggered)</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_meat</p>
		</td>
		<td>
			<p>meat_shower, func_counter, gib_*, monster_dead_*</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_void</p>
		</td>
		<td>
			<p>func_bob, suspended items, trigger spawn items, func_breakables</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_zombies</p>
		</td>
		<td>
			<p>func_counter, func_oncount, enhanced zombies, trigger spawned monsters</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_rotate</p>
		</td>
		<td>
			<p>func_rotate_entity, path_rotate, func_rotate_train, func_movewall, rotate_object, func_rotate_door</p>
		</td>
		<td>
			<p>This is Hipnotic's original sample map. Slight changes to lighting and renamed.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_ionous</p>
		</td>
		<td>
			<p>is_waiting, trigger spawned monsters</p>
		</td>
		<td>
			<p>from 1.0.0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_yoder</p>
		</td>
		<td>
			<p>trigger_push_custom, multiple trigger names, trigger_setgravity</p>
		</td>
		<td>
			<p>from 1.0.0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_gallery</p>
		</td>
		<td>
			<p>all entities from version 1.0.0</p>
		</td>
		<td>
			<p>from 1.0.0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_gravity</p>
		</td>
		<td>
			<p>trigger_setgravity, trigger spawned monsters</p>
		</td>
		<td>
			<p>from 1.0.0</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_keys</p>
		</td>
		<td>
			<p>item_key_custom</p>
		</td>
		<td>
			<p>currently no entrance for this in the start map</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_bosses</p>
		</td>
		<td>
			<p>(killable bosses) monster_oldone2, monster_boss2, item_backpack, func_fall2, invisible func_breakable, play_mflash, misc_particlestream, play_sound_triggered, ambient_fire</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>pd_change_dest</p>
		</td>
		<td>
			<p>info_teleport_changedest, info_teleport_random, play_tele, trigger_shake, misc_sparks, play_sound_triggered, misc_teleporttrain</p>
		</td>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<p>prefab_ammo_backpack</p>
		</td>
		<td>
			<p>item_backpack</p>
		</td>
		<td>
			<p>This shows how you can use an item_backpack to mimic ammo boxes. You can set custom ammo, re-name the ammo. This offers more options than standard ammo.</p>
		</td>
	</tr>
	<tr>
		<td>
			<p>prefab_func_fall2</p>
		</td>
		<td>
			<p>func_fall2</p>
		</td>
		<td>
			<p>Shows off most setups with lots of variations.</p>
		</td>
	</tr>
	</tbody>
</table>

<Divider />
