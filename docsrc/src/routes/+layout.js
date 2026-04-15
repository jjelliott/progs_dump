import { isLocalManual } from '$lib/is-local-manual.js';

export const prerender = !isLocalManual()
export const csr = !isLocalManual()