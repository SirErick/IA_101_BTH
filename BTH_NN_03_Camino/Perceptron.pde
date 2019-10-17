int sign (float n) {
  if (n>=0) {
    return 1;
  } else {
    return -1;
  }
}


class Perceptron {

  float [] weights = new float [2];
  float lr=0.01;

  Perceptron () {

    for (int i =0; i<weights.length; i++) {
      weights[i]=random(-1, 1);
    }
  }


  int suposicion(float[] inputs) {
    float sum =0;

    for (int i=0; i<weights.length; i++) {
      sum+= inputs[i]*weights[i];
    }
    int output = sign (sum);
    return output;
  }

  void train(float[] inputs, int target) {
    int suposicion= suposicion(inputs);
    int error = target - suposicion;

    //sintonizar los pesos
    for (int i=0; i<weights.length; i++) {
      weights[i]+=error*inputs[i]*lr;
    }
  }
  
  
}
