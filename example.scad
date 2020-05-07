use<3D/breadboard.scad>
use<3D/r.scad>

breadboard();

//Params für r: a,b,p=wert, len=breite der Drähte, x=xpos, y=ypos, r=Drehung
r(x=3,r=0); //100 (default)
r(4,7,3,x=5,r=1); //4.7k
r(2,2,1,x=8,y=7,r=0); //220
r(3,9,4,len=7,x=4,y=8); //39k
r(6,5,8,len=1,x=4,y=7,r=1); //6.5G
r(6,5,8,len=1,x=6,y=11,r=3); //6.5G