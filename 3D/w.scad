d = 4;

module w(len=4,x=1,y=3,r=0,col="Red"){
  
  s = (len == 1)?2:0;
  translate([d*x,d*y-2*d,6])
  rotate([0,0,-90*r]) 
  translate([0,d*len/2,0]){
  
  color(col){
    rotate([90,0,0])
    cylinder(d*(len-1+s/4),1,1,true,$fn=32);
  }
    //draht
  color([.8,.8,.8]){
    difference(){
    translate([0,3.3-d/2*(len-4),0])
    import("stl/r_draht.stl");
    if(len==1)
    translate([0,2,0.1])
    cube([2,5,2],true);
    }
    difference(){
    translate([0,-3.3+d/2*(len-4),0])
    mirror([0,1,0])
      import("stl/r_draht.stl");
    if(len==1)
    translate([0,-2,0.1])
    cube([2,5,2],true);
    }
    
    if(len>5){
      rotate([90,0,0])
      cylinder((len-2)*d,.52,.52,$fn=64,center=true);
    }
  }
 }
}


w();
translate([d,0,0])
w(5);
translate([8,0,0])
w(6);
translate([16,0,0])
w(10, r=1,col="Blue");
translate([12,0,0])
w(1);