COFFEE = ./node_modules/.bin/coffee
SUPERVISOR = ./node_modules/.bin/supervisor \
						 --extensions 'coffee' \
						 --no-restart-on exit \
						 --exec
MOCHA = ./node_modules/.bin/mocha \
				--compilers coffee:coffee-script

.PHONY: install serve sup test

install:
	npm install

serve:
	$(COFFEE) ./src/app.coffee

dev-serve:
	$(SUPERVISOR) make -- serve

test:
	$(MOCHA) --reporter spec

test-min:
	$(MOCHA) --reporter min

dev-test:
	$(SUPERVISOR) make -- test-min
