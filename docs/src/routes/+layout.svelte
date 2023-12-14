<script>
	import 'tailwindcss/tailwind.css';
	import '../app.pcss';
	import './styles.css';
</script>

<div class="app">
	<main>
		<slot />
	</main>
	<footer>
		<p>visit suckondeeznutz.com</p>
	</footer>
</div>

<style lang="postcss">
	:global(body) {
		@apply bg-gradient-to-b from-gray-700 via-gray-900 to-black;
	}
	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 0;
		width: 100%;
		max-width: 64rem;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 12px;
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 12px 0;
		}
	}
</style>
