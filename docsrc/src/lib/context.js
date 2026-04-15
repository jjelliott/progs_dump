import { getContext, setContext } from 'svelte';

export const SINGLE_PAGE_KEY = Symbol('singlePage');

export const singlePage = {
	get: () => getContext(SINGLE_PAGE_KEY),
	set: (/** @type {boolean} */ singlePage) => setContext(SINGLE_PAGE_KEY, singlePage)
}