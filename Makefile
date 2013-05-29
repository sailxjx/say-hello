default: generate

generate:
	scss -t compressed --update assets/scss:public/css
	coffee -o public/js -c assets/coffee

clean:
	find . -name '.sass-cache' | xargs rm -r
	[[ -d tmp/forever ]] && rm -r tmp/forever/*.log

.PHONY: generate
