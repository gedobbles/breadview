use<3D/breadboard.scad>
use<3D/r.scad>
use<3D/c.scad>
use<3D/ec.scad>
use<3D/w.scad>

breadboard();

//Params für r: a,b,p=wert, len=breite der Drähte, x=xpos, y=ypos, r=Drehung
r(x=3,r=0); //100 (default)
r(4,7,3,x=5,r=1); //4.7k
r(2,2,1,x=8,y=7,r=0); //220
r(3,9,4,len=7,x=4,y=8); //39k
r(6,5,8,len=1,x=4,y=7,r=1); //6.5G
r(6,5,8,len=1,x=6,y=11,r=3); //6.5G
w(y=10,len=3);
w(x=9,y=11,len=15,r=1,col="Black");
c(x=10, len=4);
c(x=10,y=8,len=8,r=1);
c(x=10,y=9,len=1,r=1);
ec(y=16,r=1);