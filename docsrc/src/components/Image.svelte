<script>
	import { isLocalManual } from '$lib/is-local-manual.js';


	/** @type {{src: string, alt: string, style: string?}} */
	let {src, alt, style =""} = $props()
</script>

<img src={isLocalManual() ? "." + src : src} alt={alt} style={style}/>