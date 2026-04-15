import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';
import path from 'path';

const buildTarget = process.env.VITE_BUILD_TARGET || 'site';
let adapterOutput = 'build';
let prerenderEntries = ['*'];
let prerenderCrawl = true;
let basePath = process.argv.includes('dev') ? '' : process.env.BASE_PATH;

if (buildTarget === 'manual') {
	adapterOutput = 'build-manual';
	prerenderEntries = ['/'];
	prerenderCrawl = false;
}

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://svelte.dev/docs/kit/integrations
	// for more information about preprocessors
	preprocess: vitePreprocess(),

	kit: {
		// adapter-auto only supports some environments, see https://svelte.dev/docs/kit/adapter-auto for a list.
		// If your environment is not supported, or you settled on a specific environment, switch out the adapter.
		// See https://svelte.dev/docs/kit/adapters for more information about adapters.
		adapter: adapter({
			pages: adapterOutput,
			assets: adapterOutput,
			fallback: undefined,
			precompress: false,
			strict: false
		}),
		paths: {
			base: basePath
		},
		alias:{
			"$components": path.resolve( "./src/components")
		},
		prerender: {
			entries: prerenderEntries,
			crawl: prerenderCrawl,
			handleMissingId: 'warn'
		}
	},
	vite:{

	}
};

export default config;
