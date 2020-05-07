example.png:

%.png: %.scad
	openscad -o $@ --imgsize=16000,9000 --autocenter --viewall --camera=80,46,9,34,0,1,10 --preview=true $<
