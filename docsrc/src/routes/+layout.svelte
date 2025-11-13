<script lang="ts">
	import favicon from '$lib/assets/favicon.svg';
	import { asset, resolve } from '$app/paths';
	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>
<nav class="navbar p-centered mx-2">
	<section class="navbar-section">
		<a class="navbar-brand" href={resolve("/")}><img alt="progs_dump" src={asset("/pd_words.png")}></a>
		<div class="col-mx-auto"></div>
		<a class="btn btn-link" href={resolve("/what-is-it")}>What is it?</a>
		<a class="btn btn-link" href={resolve("/manual")}>Manual</a>
		<a class="btn btn-link" href={resolve("/download")}>Download</a>
		<a class="btn btn-link" href={resolve("/credits")}>Credits</a>
	</section>
</nav>
<div class="divider"></div>
<!--<div class="container">-->
<!--	<div class="card bg-warning">-->
<!--		<div class="card-body">-->
<!--			This site is under construction - please ignore any formatting errors for now!-->
<!--		</div>-->
<!--	</div>-->
<!--</div>-->
{@render children()}
