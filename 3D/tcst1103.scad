d=4;
module tcst1103(len=2,x=1,r=0){
  translate([(x+len/2)*d-2,10.5*d,5.2])
  rotate([0,0,-90*r])
    translate([-len*d/2,-1.5*d,0]){
    color("#222222")
    difference(){
      //cube([len*d,2.5*d,d]);
      translate([0,-2,0])
      cube([2*d,2.5*d+5,4*d]);
      translate([-.1,2,d])
      cube([8.2,1.6*d,12.1]);
      translate([3.25,1,2*d])
      cube([1.5,8.5,8.1]);
      translate([-.1,13.8,3.5*d])
      rotate([45,0,0])
      cube([8.2,d,d]);
    }
    color("Silver")
    for(i=[1:len]){
      translate([i*d-2.5,0,-2]){
        cube([1,.3,d]);
      }
      translate([i*d-2.5,3*d,-2]){
        rotate([0,0,180])
        translate([-1,0,0])
        cube([1,.3,d]);
      }
    }//end pins
  }
}

tcst1103();
//tcst1103(r=2);