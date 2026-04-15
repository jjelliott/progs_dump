<script>
import { resolve } from '$app/paths';
import wordLogo from '$lib/assets/pd_words.png'
let {children} = $props();
</script>
<nav class="navbar p-centered mx-2">
	<section class="navbar-section">
		<a class="navbar-brand" href={resolve("/")}><img alt="progs_dump" src={wordLogo}></a>
		<div class="col-mx-auto"></div>
		<a class="btn btn-link" href={resolve("/what-is-it")}>What is it?</a>
		<a class="btn btn-link" href={resolve("/manual")}>Manual</a>
		<a class="btn btn-link" href={resolve("/download")}>Download</a>
		<a class="btn btn-link" href={resolve("/credits")}>Credits</a>
	</section>
</nav>
<div class="divider"></div>

	{@render children()}