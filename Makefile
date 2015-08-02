.PHONY: install
install:
	python setup.py develop

.PHONY: test
test: pep8
	nosetests tests

.PHONY: pep8
pep8:
	@flake8 quokka_themes --ignore=F403

.PHONY: sdist
sdist:
	@python setup.py sdist upload

.PHONY: clean
clean:
	@find ./ -name '*.pyc' -exec rm -f {} \;
	@find ./ -name 'Thumbs.db' -exec rm -f {} \;
	@find ./ -name '*~' -exec rm -f {} \;