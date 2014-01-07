COFFEE = ./node_modules/.bin/coffee
SUPERVISOR = supervisor \
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

sup:
	$(SUPERVISOR) make -- serve

test:
	$(MOCHA) --reporter spec

test-min:
	$(MOCHA) --reporter min

tester:
	$(SUPERVISOR) make -- test-min
