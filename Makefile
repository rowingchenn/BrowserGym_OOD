install:
	@echo "--- 🚀 Installing project dependencies ---"
	pip install -e ./core ./miniwob ./webarena ./experiments ./

install-demo:
	@echo "--- 🚀 Installing demo dependencies ---"
	pip install demo_agent/requirements.txt

demo:
	@echo "--- 🚀 Running demo agent ---"
	(set -x && cd demo_agent && python run_demo.py)

test-core:
	@echo "--- 🧪 Running tests ---"
	pytest -n auto ./core
