import os, random

path = "/home/ggraca/Pictures/Wallpapers/Pokemon"
gen = random.randint(0, 2)

if gen < 2:
	path += "/GenerationI/"
	pokemon = random.randint(1, 151) 
else:
	path += "/GenerationII/"
	pokemon = random.randint(152, 251) 

path += str(pokemon).zfill(3)
path += ".png"

os.system("feh --bg-scale " + path)