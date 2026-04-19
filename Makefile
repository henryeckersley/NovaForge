PYTHON ?= python

.PHONY: install test run self-improve

install:
	$(PYTHON) -m pip install -e .[providers]

test:
	$(PYTHON) -m pytest -q

run:
	@echo "Usage: make run GOAL='Your goal here'"
	@test -n "$(GOAL)"
	novaforge run "$(GOAL)"

self-improve:
	@echo "Usage: make self-improve REASON='Your reason'"
	@test -n "$(REASON)"
	novaforge self-improve --reason "$(REASON)"