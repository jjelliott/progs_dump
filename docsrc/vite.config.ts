import { defineConfig } from 'vitest/config';
import { sveltekit } from '@sveltejs/kit/vite';
import path from 'node:path';

export default defineConfig(({mode}) => {
	console.log(`[vite.config.js] Detected Mode: ${mode}`);

	// 2. We set it as a *new* env variable that svelte.config.js can read
	process.env.VITE_BUILD_TARGET = mode;
	return ({

		plugins: [sveltekit()],
		test: {
			expect: { requireAssertions: true },
			projects: [
				{
					extends: './vite.config.ts',
					test: {
						name: 'client',
						environment: 'browser',
						browser: {
							enabled: true,
							provider: 'playwright',
							instances: [{ browser: 'chromium' }]
						},
						include: ['src/**/*.svelte.{test,spec}.{js,ts}'],
						exclude: ['src/lib/server/**'],
						setupFiles: ['./vitest-setup-client.ts']
					}
				},
				{
					extends: './vite.config.ts',
					test: {
						name: 'server',
						environment: 'node',
						include: ['src/**/*.{test,spec}.{js,ts}'],
						exclude: ['src/**/*.svelte.{test,spec}.{js,ts}']
					}
				}
			]
		}
	});
});
