d = 4;
module breadboard(){
l = 63*d;
w = 21*d;
h = 5;
color("White")
difference(){
  //main body
  cube([l,w,h]);
  //mittlere rille
  translate([-1,10.5*d-2,h-1])
    cube([l+2,4,2]);
  //äußere rillen
  translate([-1,13.5,h-0.7])
  rotate([45,0,0])
    cube([l+2,1,2]);
  translate([-1,w-14.5,h-0.7])
  rotate([45,0,0])
    cube([l+2,1,2]);
  
  //außen
  translate([3*d,0,0])
  for(j=[0:9]){
    translate([6*j*d,d,0])
    for(i=[0:4]){
      translate([i*d,0,0]){
        stoepsel();
        translate([0,d,0])
        stoepsel();
        translate([0,w-2*d,0])
        stoepsel();
        translate([0,w-3*d,0])
        stoepsel();
      }
    }
  }
  
  //innen
  translate([d,5*d,0])
  for(x=[0:61]){
    translate([x*d,0,0]){
      for(y=[0:4]){
        translate([0,y*d,0])
        stoepsel();
        translate([0,y*d+7*d,0])
        stoepsel();
      }
    }
  }
}

module stoepsel(){
  translate([0,0,3.51])
  import("stl/stoepsel.stl");
}
}

breadboard();
translate([0,d,h])
cube([1,4*d,1]);