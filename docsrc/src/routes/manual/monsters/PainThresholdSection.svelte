<script>
	import TextSection from '$components/TextSection.svelte';
</script>

<h2 id="pain-threshold-pain-target">pain_threshold pain_target</h2>

<TextSection>
	When a monster's health drops below its `pain_threshold`, its `pain_target`s are
	triggered. You can use this to call in reinforcements mid-battle, spawn items or fire
	other triggers when a monster reaches a certain level of health.
</TextSection>

<TextSection>
	You can also target things upon a monster's death, as always. Default values for monster
	health have been added to the FGD for reference. Check out
	<a href="https://youtu.be/RnJQc1WldF0">this tutorial video</a> to see this and other
	features in action.
</TextSection>
