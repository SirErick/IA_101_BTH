Perceptron cerebro;

Point[] points = new Point[100];

void setup(){
cerebro= new Perceptron();
size(800,800);

for(int i=0;i<points.length;i++){
points[i]=new Point();
}
float[] inputs ={-1,0.5};
int suposicion= cerebro.suposicion(inputs);
println(suposicion);


}

void draw(){
  
  background(255);
  stroke(0);
  line(0,0,width,height);
  
  for(Point pt:points){
  pt.show();
  }


}
