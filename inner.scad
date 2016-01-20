$fn = 50; 

// iChip design that will fit inside 50 mL Falcon tube
// inner portion with pores 

difference() {
  hull() {
    translate( [-10, 25] ) circle( r=1 ); 
    translate( [10, 25] ) circle( r=1 ); 
    translate( [-10, -25] ) circle( r=1 ); 
    translate( [10, -25] ) circle( r=1 ); 
    translate( [0, -30] ) circle( r=1 ); //tip 
  }
  union() {
    for (i=[-4:4]) {
      for (j=[-8:8] ) {
        translate( [2*i, 2*j] ) circle( r=0.6 ); 
      }        
    }
  }
}
