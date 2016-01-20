$fn = 50; 

// iChip design that will fit inside 50 mL Falcon tube
// outer portion 

w = 25; 
h = 10; 
s = 3.1; //shoulder thickness

difference() {
  
  hull() {
    translate( [-h, w] ) circle( r=1 ); 
    translate( [h, w] ) circle( r=1 ); 
    translate( [-h, -w] ) circle( r=1 ); 
    translate( [h, -w] ) circle( r=1 ); 
    translate( [0, w + 10] ) circle( r=1 ); //tip 
  }
  
  hull() {
    translate( [-h + s, w - s ] ) circle( r=1 ); 
    translate( [h - s, w - s ] ) circle( r=1 ); 
    translate( [-h + s , -w + s ] ) circle( r=1 ); 
    translate( [h - s , -w + s ] ) circle( r=1 ); 

  }
  
}
