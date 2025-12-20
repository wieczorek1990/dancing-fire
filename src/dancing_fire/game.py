import math
import os
import sys

import moderngl
import pygame

os.environ["SDL_WINDOWS_DPI_AWARENESS"] = "permonitorv2"

width, height = 400, 400
caption = "Dancing Fire"
milliseconds_in_a_second = 1000.0
blue = 166, 219, 255
r, g, b = [float(value) / 255.0 for value in blue]


class Scene:
    def __init__(self):
        self.ctx = moderngl.get_context()

    def render(self):
        now = pygame.time.get_ticks() / milliseconds_in_a_second

        self.ctx.clear(r, g, b)


class Game:
    def __init__(self, scene):
        self.scene = scene

    def tick(self):
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()
        self.scene.render()
        pygame.display.flip()


def main():
    pygame.init()
    pygame.display.set_mode((width, height), flags=pygame.OPENGL | pygame.DOUBLEBUF, vsync=True)
    pygame.display.set_caption(caption)

    scene = Scene()
    game = Game(scene)

    while True:
        game.tick()
