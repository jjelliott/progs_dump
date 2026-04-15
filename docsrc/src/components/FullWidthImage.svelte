<script>
	import Image from '$components/Image.svelte';

	/** @type {{src: string, alt: string}} */
	let {src, alt} = $props()
</script>

<Image src={src} alt={alt} style="width: 100%"/>