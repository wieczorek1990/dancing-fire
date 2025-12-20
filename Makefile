dependencies:
	brew install sdl2
	pip3 install moderngl pygame --break-system-packages

run:
	cd src/ && python3 -m dancing_fire
