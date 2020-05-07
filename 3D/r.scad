d = 4;

module r(a=1,b=0,p=1, len=4,x=1,y=3,r=0){
  colors = ["Black", "SaddleBrown","Red","DarkOrange","Yellow","Green","Blue","DarkViolet","Grey","White","Goldenrod","Silver"];
  c1 = colors[a];
  c2 = colors[b];
  c3 = colors[p];
  s = (len == 1)?2:0;
  translate([d*x,d*y-2*d,7.5])
  rotate([0,0,-90*r]) 
  translate([0,d*len/2-s,0]){
  
 if(len == 1){
   //Spezialfall
   translate([0,0,5])
   rotate([90,0,0])
  scale([.65,.65,.65]){
    //main body
    color([1,0.8,0.6])
      import("stl/r.stl");

    //1
    color(c1)
    translate([0,-3,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
    //2
    color(c2)
    translate([0,-1,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
    //3
    color(c3)
    translate([0,1,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
    //gold
    color("Goldenrod")
    translate([0,3,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
  }
  color([.8,.8,.8]){
    translate([0,-.02,0])
    cylinder(7,.52,.52,$fn=64,center=true);
    translate([0,3.88,3])
    cylinder(13,.52,.52,$fn=64,center=true);
    difference(){
    translate([0,-.02,0])
    rotate([-90,0,180])
    import("stl/r_draht.stl");
    translate([0,3.5,11.5])
    cube(2, true);  
    }
    difference(){
    translate([0,3.88,0])
    rotate([-90,0,0])
    import("stl/r_draht.stl");
    translate([0,.5,11.5])
    cube(2, true);  
    }
  }
  
  //Normal
 }else{
  scale([.65,.65,.65]){
    //main body
    color([1,0.8,0.6])
      import("stl/r.stl");

    //1
    color(c1)
    translate([0,-3,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
    //2
    color(c2)
    translate([0,-1,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
    //3
    color(c3)
    translate([0,1,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
    //gold
    color("Goldenrod")
    translate([0,3,0])
    rotate([90,0,0])
      cylinder(1,2.5,2.5, $fn=64, center=true);
  }
    //draht
  color([.8,.8,.8]){
    translate([0,3.3-d/2*(len-4),0])
    import("stl/r_draht.stl");
    translate([0,-3.3+d/2*(len-4),0])
    mirror([0,1,0])
      import("stl/r_draht.stl");
    if(len>5){
      rotate([90,0,0])
      cylinder((len-2)*d,.52,.52,$fn=64,center=true);
    }
  }
 }
 }
}


r();
translate([d,0,0])
r(2,2,1,5);
translate([8,0,0])
r(4,7,2,6);
translate([16,0,0])
r(6,8,0,10, r=1);

translate([-4,0,0])
r(2,2,11,1);
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