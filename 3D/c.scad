d = 4;

module c(c=104, len=4,x=1,y=3,r=0){

  s = (len == 1)?2:0;
  translate([d*x,d*y-2*d,5.5])
  rotate([0,0,-90*r]) 
  translate([0,d*len/2-s,0]){
  
 if(len == 1){
   //Spezialfall
   translate([0,2,5])
  scale([.65,.65,.65]){
    //main body
    color("DarkGoldenrod")
    translate([0,0,d])
    scale([.4,1,1])
    sphere(r=5, $fn=64);

  }
  color([.8,.8,.8]){
    translate([0,-.02,3])
    cylinder(13,.52,.52,$fn=64,center=true);
    translate([0,3.88,3])
    cylinder(13,.52,.52,$fn=64,center=true);
  }
  
  //Normal
 }else{
  scale([.65,.65,.65]){
    //main body
    color("DarkGoldenrod")
    translate([0,0,2*d])
    scale([.4,1,1])
    sphere(r=5, $fn=64);

  }
    //draht
  color([.8,.8,.8]){
    difference(){
    translate([0,3.3-d/2*(len-4),0])
    import("stl/r_draht.stl");
    translate([0,-2.5,0])
    cube([2,2,2],center=true);
    }
    difference(){
    translate([0,-3.3+d/2*(len-4),0])
    mirror([0,1,0])
      import("stl/r_draht.stl");
    translate([0,2.5,0])
    cube([2,2,2],center=true);
    }
    if(len>5){
      difference(){  
      rotate([90,0,0])
      cylinder((len-2)*d,.52,.52,$fn=64,center=true);
      rotate([90,0,0])
      cylinder(7,.53,.53,$fn=64,center=true);
      }
    }
    difference(){
    translate([0,-13,0])
    rotate([180,0,0])
    import("stl/r_draht.stl");
    translate([0,-7,0])
    cube([2,2,2],center=true);
    }
    difference(){
    translate([0,13,0])
    rotate([180,0,0])
    mirror([0,1,0])
      import("stl/r_draht.stl");
    translate([0,7,0])
    cube([2,2,2],center=true);
    }
  }
 }
 }
}


c();
translate([d,0,0])
c(104,5);
translate([8,0,0])
c(123,6);
translate([16,0,0])
c(777,10, r=1);

translate([-4,0,0])
c(103,1);
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