Perceptron brain;
Point[] points =new Point[50];

int iter=0;

void setup(){
brain= new Perceptron();
size(600,200);

for(int i=0;i<points.length;i++){
points[i]= new Point();
}

float[]inputs = {-1,0.5};
int suposicion = brain.suposicion(inputs);
println(suposicion);
}

void draw(){

background(255);
stroke(0);
line(0,height/2,width,height/2);
for(Point pt : points){
pt.show();
}

for(Point pt : points){
  iter++;
  float[] inputs ={pt.x,pt.y};
  int target = pt.label;
  //ENTRENAMIENTO
  brain.train(inputs,target);
  int suposicion = brain.suposicion(inputs);

  if(suposicion==target){
  fill(0,255,0);
  }
  else{
  fill(255,0,0);
  }
  noStroke();
  ellipse(pt.x,pt.y,16,16);
  
}



}

void mousePressed() {
  for (Point pt : points) {
    float[] inputs = {pt.x, pt.y};
    int target = pt.label;
    brain.train(inputs, target);
  }

}
