<script context="module">
  let code= 'code';
  import SideMenu from '$lib/components/SideMenu.svelte'
  export const ssr = false
</script>

<SideMenu />

<div class="h-screen w-full bg-gradient-to-b from-gray-700 via-gray-900 to-black">
<!--
<header class="p-4 h-[120px] bg-cyan-400">
 <h1 class="text-center inline-block bg-gradient-to-tr from-orange-500 to-yellow-300 bg-clip-text text-5xl text-transparent">bookmarklets</h1>
</header>
-->
<div class="hero min-h-[50%j] bg-base-200">
  <div class="hero-content text-center">
    <div class="max-w-md">
      <h1 class="text-5xl font-bold">Hello there</h1>
      <h1 class="text-center inline-block bg-gradient-to-tr from-orange-500 to-yellow-300 bg-clip-text text-5xl text-transparent">bookmarklets</h1>
      <p class="py-6">Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.</p>
      <button class="btn btn-primary">Get Started</button>
    </div>
  </div>
</div>

<main class="mt-20">
<div class="mockup-code">
  <pre data-prefix="~"><code>{code}</code></pre>
</div>


<div class="mockup-window border bg-base-300">
  <div class="flex justify-center px-4 py-16 bg-base-200">Hello!</div>
</div>


<div class="suckmockup-browser border border-base-300">
	<div class="suckmockup-browser-toolbar">
		<div class="suckinput border border-base-300">https://daisyui.com</div>
	</div>
	<div class="flex justify-center px-4 py-16 border-t border-base-300">Hello!</div>
</div>

<div class="mockup-browser border bg-base-300">
	<div class="mockup-browser-toolbar">
		<div class="input">https://daisyui.com</div>
	</div>
	<div class="flex justify-center px-4 py-16 bg-base-200">Hello!</div>
</div>
</main>
</div>
