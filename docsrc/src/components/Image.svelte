<script>
    import { asset } from '$app/paths';

		let {src, alt} = $props()
</script>

<img src={asset(src)} alt={alt} style="width: 100%"/>