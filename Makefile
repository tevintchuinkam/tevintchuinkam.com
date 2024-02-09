serve:
	hugo && hugo serve --noHTTPCache --disableFastRender --buildDrafts --buildFuture & $(MAKE) tailwind

tailwind:
	npx tailwindcss -i ./static/css/main.css -o ./static/css/style.css --watch  && echo "Tailwind is watching for changes"