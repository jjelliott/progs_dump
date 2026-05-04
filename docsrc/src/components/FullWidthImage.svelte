<script>
	import Image from '$components/Image.svelte';

	/** @type {{src: string, alt: string, style?: string}} */
	let { src, alt, style = "" } = $props();
</script>

<Image {src} {alt} style="width: 100%; {style}" />