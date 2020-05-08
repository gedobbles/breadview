d = 4;

module ec(c="100uF", len=4,x=1,y=3,r=0){

  s = (len == 1)?2:0;
  translate([d*x,d*y-2*d,5.5])
  rotate([0,0,-90*r]) 
  translate([0,d*len/2-s,0]){
  
 if(len == 1){
   //Spezialfall
   translate([0,2,0])
  scale([.65,.65,.65]){
    color("#333333")
    translate([0,0,d])
    cylinder(20,5,5, $fn=64);
    color("White")
    translate([4.7,1,10])
    rotate([90,-90,90])
    linear_extrude(0.3)
    text(c,2.5);
    color("White")
    translate([0,-.107,d+.1])
    cylinder(19.8,4.9,4.9, $fn=64);
    color("Silver")
    translate([0,0,d+.05])
    cylinder(20,3.5,3.5, $fn=64);
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
    color("#333333")
    translate([0,0,d])
    cylinder(20,5,5, $fn=64);
    color("White")
    translate([4.7,1,10])
    rotate([90,-90,90])
    linear_extrude(0.3)
    text(c,2.5);
    color("White")
    translate([0,-.107,d+.1])
    cylinder(19.8,4.9,4.9, $fn=64);
    color("Silver")
    translate([0,0,d+.05])
    cylinder(20,3.5,3.5, $fn=64);
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


ec();
translate([2*d,0,0])
ec("104uF",5);
translate([4*d,0,0])
ec("123uF",6);
translate([16,0,0])
ec("777uF",10, r=1);

translate([-4,0,0])
ec("103uF",1);
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