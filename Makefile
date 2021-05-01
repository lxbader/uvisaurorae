.PHONY: lint
lint:
    black .
    isort .
    flake8 .