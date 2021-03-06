default:
	@echo "Usage:"
	@echo "\tmake test
	@echo "\tmake format

test:
	python tests/classifier.py
	python tests/detector.py

format:
	autoflake -i cvtron/*.py
	autoflake -i cvtron/**/*.py

	isort -i cvtron/*.py
	isort -i cvtron/**/*.py 

	yapf -i cvtron/*.py
	yapf -i cvtron/**/*.py
