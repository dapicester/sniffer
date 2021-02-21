.PHONY: clear upload test_upload test

clear:
	find . | grep --regexp '.pyc$$' | xargs rm
	rm -rf build

upload:
	python setup.py sdist bdist_wheel
	twine upload dist/*

test:
	python -m unittest
