d = 4;

module d(a=1,b=0,p=1, len=4,x=1,y=3,r=0){
  colors = ["Black", "SaddleBrown","Red","DarkOrange","Yellow","Green","Blue","DarkViolet","Grey","White","Goldenrod","Silver"];
  c1 = colors[a];
  c2 = colors[b];
  c3 = colors[p];
  s = (len == 1)?2:0;
  translate([d*x,d*y-2*d,7])
  rotate([0,0,-90*r]) 
  translate([0,d*len/2-s,0]){
    //body

    color("Coral")
    rotate([90,0,0])
    cylinder(6,1.1,1.1,$fn=128,center=true);
    translate([0,3,0])
    color("#333333")
    rotate([90,0,0])
    cylinder(1,2.01,2.01,$fn=128,center=true);
    color("#ffffff33")
    rotate([90,0,0])
    cylinder(6,2,2,$fn=128,center=true);

    //draht
  color([.8,.8,.8]){
    translate([0,3.3-d/2*(len-4),0])
    import("stl/r_draht.stl");
    translate([0,-3.3+d/2*(len-4),0])
    mirror([0,1,0])
      import("stl/r_draht.stl");
    rotate([90,0,0])
    cylinder((len-2)*d,.52,.52,$fn=64,center=true);
  }
 }
}



d();
translate([d,0,0])
d(2,2,1,5);
translate([8,0,0])
d(4,7,2,6);
translate([16,0,0])
d(6,8,0,10, r=1);

translate([-4,1.45,4.5])
#cube([1,4,1], center=true);

translate([0,0,4.5])
#cube([1,4*d,1], center=true);
translate([4,0,4.5])
#cube([1,20,1], center=true);
translate([8,0,4.5])
#cube([1,24,1], center=true);
translate([16,0,4.5])
#cube([1,40,1], center=true);