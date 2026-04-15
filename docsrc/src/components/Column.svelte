<script>
    import { isLocalManual } from '$lib/is-local-manual.js';

		/** @type {{col: any, xl?: number, lg?: number, md?: number, sm?: number, xs?: number, mxAuto?: any, mlAuto?: any, mrAuto?: any, classes?: string, scrollable?: boolean, children?: import('svelte').Snippet}} */
    let {
        col,
        xl = 0,
        lg = 0,
        md = 0,
        sm = 0,
        xs = 0,
        mxAuto = null,
        mlAuto = null,
        mrAuto = null,
        classes = "",
			scrollable,
        children
    } = $props();

		let heightStyle = isLocalManual() ? "max-height: 100vh;": "max-height: calc(100vh - 60px);"
		let style = scrollable? `overflow-y: scroll; scrollbar-width: thin;` + heightStyle:""
</script>

<div class="column col-{col}
{xl ? `col-xl-${xl}` : ''}
{lg ? `col-lg-${lg}` : ''}
{md ? `col-md-${md}` : ''}
{sm ? `col-sm-${sm}` : ''}
{xs ? `col-xs-${xs}` : ''}
{(mxAuto && mxAuto !== 'false' && mxAuto !== 0) ? 'col-mx-auto' : ''}
{(mrAuto && mrAuto !== 'false' && mrAuto !== 0) ? 'col-mr-auto' : ''}
{(mlAuto && mlAuto !== 'false' && mlAuto !== 0) ? 'col-ml-auto' : ''}
{classes}" style={style}>

{@render children?.()}
</div>