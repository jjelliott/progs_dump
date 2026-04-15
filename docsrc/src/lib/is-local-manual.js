import { PUBLIC_BUILD_TARGET } from '$env/static/public';
export function isLocalManual() {
	return PUBLIC_BUILD_TARGET === 'manual';
}