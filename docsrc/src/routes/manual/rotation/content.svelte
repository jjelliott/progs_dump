<script>
	import Divider from '$components/Divider.svelte';
	import TextSection from '$components/TextSection.svelte';
	import FullWidthImage from '$components/FullWidthImage.svelte';
</script>

<h1 id="h.9dykgij8gr30">Rotation Entities</h1>

<table class="table">
	<tbody>
	<tr>
		<td>
			<p>By request, the Hipnotic (Quake Mission Pack 1) rotation entities have been added but are unsupported. Use at your own risk! The text below is taken from the Quake C code for the rotation system. Refer to the included sample map pd_rotate for examples. Also, here are the <a href="https://tomeofpreach.wordpress.com/quoth/tutorial/rotation-overview/">steps to create rotating entities</a>. Enjoy!</p>
		</td>
	</tr>
	</tbody>
</table>

<h2 id="h.xnfn8y4t22s4">func_rotate_entity</h2>

<TextSection>Creates an entity that continually rotates. Can be toggled on and off if targeted. TOGGLE = allows the rotation to be toggled on/off START_ON = whether the entity is spinning when spawned. If TOGGLE is 0, the entity can be turned on, but not off.</TextSection>

<TextSection>If &quot;deathtype&quot; is set with a string, this is the message that will appear when a player is killed by the train. The mapper can set &quot;deathtype&quot; on either an &quot;inflictor&quot; entity or an &quot;attacker&quot; entity (in the mission pack, it only worked when set on an attacker). The inflictor and attacker are often one and the same entity, but there are some cases where they are not: for example, if a player gets crushed by a func_movewall which is controlled by a func_rotate_entity, the func_movewall is the inflictor and the func_rotate_entity is the attacker.</TextSection>

<TextSection>&quot;rotate&quot; is the rate to rotate. &quot;target&quot; is the center of rotation, &quot;speed&quot; is how long the entity takes to go from standing still to full speed and vice-versa.</TextSection>

<h2 id="h.z49kz1lb4kwu">path_rotate</h2>

<TextSection>(Train with rotation functionality) Path for rotate_train. ROTATION tells the train to rotate at a rate specified by &quot;rotate&quot;. Use &#x27;0 0 0&#x27; to stop rotation. ANGLES tells the train to rotate to the angles specified by &quot;angles&quot; while traveling to this path_rotate. Use values &lt; 0 or &gt; 360 to guarantee that it turns in a certain direction. Having this flag set automatically clears any rotation. STOP tells the train to stop and wait to be retriggered. NO_ROTATE tells the train to stop rotating when waiting to be triggered. DAMAGE tells the train to cause damage based on &quot;dmg&quot;. MOVETIME tells the train to interpret &quot;speed&quot; as the length of time to take moving from one corner to another. SET_DAMAGE tells the train to set all targets damage to &quot;dmg&quot; &quot;noise&quot; contains the name of the sound to play when the train stops. &quot;noise1&quot; contains the name of the sound to play when the train moves. &quot;event&quot; is a target to trigger when the train arrives at path_rotate.</TextSection>

<h2 id="h.eeozqo4c4aba">func_rotate_train</h2>

<TextSection>In path_rotate, set speed to be the new speed of the train after it reaches the path change. If speed is -1, the train will warp directly to the next path change after the specified wait time. If MOVETIME is set on the path_rotate, the train interprets &quot;speed&quot; as the length of time to take moving from one corner to another. &quot;noise&quot; contains the name of the sound to play when the train stops. &quot;noise1&quot; contains the name of the sound to play when the train moves. Both &quot;noise&quot; and &quot;noise1&quot; defaults depend upon the &quot;sounds&quot; variable and can be overridden by the &quot;noise&quot; and &quot;noise1&quot; variables in path_rotate.</TextSection>

<TextSection>Also in path_rotate, if STOP is set, the train will wait until it is retriggered before moving on to the next goal.</TextSection>

<TextSection>Trains are moving platforms that players can ride. &quot;path&quot; specifies the first path_rotate and is the starting position. If the train is the target of a button or trigger, it will not begin moving until activated. The func_rotate_train entity is the center of rotation of all objects targeted by it.</TextSection>

<TextSection>If &quot;deathtype&quot; is set with a string, this is the message that will appear when a player is killed by the train. speed (default 100) dmg (default 0) sounds 1 = ratchet metal</TextSection>

<h2 id="h.mp8bbwbyyf4u">func_movewall</h2>

<TextSection>Used to emulate collision on rotating objects. VISIBLE causes brush to be displayed. TOUCH specifies whether to cause damage when touched by a player. NONBLOCKING makes the brush non-solid. This is useless if VISIBLE is set. &quot;dmg&#x27;&#x27; specifies the damage to cause when touched or blocked.</TextSection>

<h2 id="h.rtseyipymiwp">rotate_object</h2>

<TextSection>This defines an object to be rotated. Used as the target of func_rotate_door.</TextSection>

<h2 id="h.tuxmar23e6ib">func_rotate_door</h2>

<TextSection>Creates a door that rotates between two positions around a point of rotation each time it&#x27;s triggered. STAYOPEN tells the door to reopen after closing. This prevents a trigger-once door from closing again when it&#x27;s blocked. &quot;dmg&quot; specifies the damage to cause when blocked. Defaults to 2. Negative numbers indicate no damage. &quot;speed&quot; specifies how the time it takes to rotate &quot;sounds&quot; 1 = medieval (default), 2 = metal, 3 = base 4 = silent</TextSection>

<Divider />
