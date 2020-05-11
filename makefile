example.png:

%.png: %.scad
	openscad -o $@ --imgsize=16000,9000 --camera=130,46,9,34,0,1,400 --preview=true $<
