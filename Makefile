COFFEE = ./node_modules/.bin/coffee
SUPERVISOR = supervisor \
						 --extensions 'coffee' \
						 --no-restart-on exit \
						 --exec

.PHONY: install serve sup

install:
	npm install

serve:
	$(COFFEE) ./app.coffee

sup:
	$(SUPERVISOR) make -- serve
