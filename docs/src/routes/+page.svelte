<script>
	import Card from '$lib/components/Card.svelte';
	let code = 'code';
	let bookmarklets = ['obsidian', 'links'];
</script>

<div class="min-w-full min-h-screen border-2 border-pink-500">
	<header class="p-4">
		<h1
			class="inline-block text-5xl text-transparent bg-clip-text bg-gradient-to-tr from-orange-500 to-yellow-300"
		>
			bookmarklets
		</h1>
	</header>

	<div class="min-w-full p-4 border-orange-400 border-2">
		<div class="grid grid-cols-3 gap-4 md:grid-cols-1">
			<Card />
			<Card />
			<Card />
		</div>
	</div>
	<div class="mockup-code">
		<pre data-prefix="~"><code>{code}</code></pre>
	</div>

	<div class="border mockup-window bg-base-300">
		<div class="flex justify-center px-4 py-16 bg-base-200">Hello!</div>
	</div>

	<div class="border suckmockup-browser border-base-300">
		<div class="suckmockup-browser-toolbar">
			<div class="border suckinput border-base-300">https://daisyui.com</div>
		</div>
		<div class="flex justify-center px-4 py-16 border-t border-base-300">Hello!</div>
	</div>

	<div class="border mockup-browser bg-base-300">
		<div class="mockup-browser-toolbar">
			<div class="input">https://daisyui.com</div>
		</div>
		<div class="flex justify-center px-4 py-16 bg-base-200">Hello!</div>
	</div>
</div>
