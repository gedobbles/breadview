d = 4;

module to92(txt="BC547C",x=1,y=3,r=1){
  translate([d*x+2,d*y-2*d,1.5])
  rotate([0,0,-90*r]) 
  translate([0,0,0]){ 
    translate([0,2,0])
    color("#333333")
    translate([0,0,3*d])
    difference(){
    cylinder(10,5,5, $fn=64);
    translate([d,0,d])
    cube([d,4*d,3.1*d],true);
    }
    color("White")
    translate([1.75,-2.7,4*d])
    rotate([90,0,90])
    linear_extrude(0.3)
    text(txt,1.8);
  
  color([.8,.8,.8]){
    translate([0,-2.02,5.75])
    cylinder(7.5,.52,.52,$fn=64,center=true);
    translate([0,-1.07,11])
    rotate([-30,0,0])
    cylinder(d,.52,.52,$fn=64,center=true);
    
    translate([0,2,7])
    cylinder(10,.52,.52,$fn=64,center=true);
    
    translate([0,6,5.75])
    cylinder(7.5,.52,.52,$fn=64,center=true);
    translate([0,5.07,11])
    rotate([30,0,0])
    cylinder(d,.52,.52,$fn=64,center=true);
  }
 }
}


to92();

translate([d,1.45,4.5])
#cube([1,4,1], center=true);
translate([2*d,1.45,4.5])
#cube([1,4,1], center=true);
translate([3*d,1.45,4.5])
#cube([1,4,1], center=true);