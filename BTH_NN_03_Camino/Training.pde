class Point {

  float x;
  float y;
  int label;

  Point () {
    x=random(600) ;
    y=random(200);
     
    if (y<100) {
      y=50;
    } 
    else{
      y=150;
    }
    

    if (y<150) {
      label=1;
    } else {
      label =-1;
    }
  }

  void show() {
    stroke(0);
    if (label==1) {
      fill(255);
    } else {
      fill(0);
    }
   
    ellipse(x, y, 32, 32);
  }
}
