
zoom.css: zoom.less
	lessc $^ $@

build: components zoom.css
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
