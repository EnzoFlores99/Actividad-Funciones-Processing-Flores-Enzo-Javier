float a = 1;
float b = -3;
float c = 2;

void setup() {
  size(800, 800);
  //-----Raices de la funcion--------//
  float x0 = (-b + sqrt(sq(b) - 4*a*c)) / (2*a);
  float x1 = (-b - sqrt(sq(b) - 4*a*c)) / (2*a);
 // println("x0: " + x0 + " x1: " + x1); //las raices donde cortan al eje X
  
}

void draw() {
  background(255);
  // Dibuja los ejes
  stroke(#18B481);
  strokeWeight(2);
  textSize(15);
  fill(0);
  text("Eje de Ordenadas (Y)",width/2+10,30); 
  line(width/2, 0, width/2, height);
  text("Eje de Abcisas (X)",20, height/2-10);
  line(0, height/2, width, height/2);
  // Dibuja función cuadrática
 // fill(250);
  stroke(255, 0, 0);
  for (float x = -400; x < 400; x += 0.01) {
    float y = (a*x*x + b*x + c)/10; //divido la funcion por un escalar para que la funcion se ensanche
    strokeWeight(3);
    point(width/2 - x-50, height/2 + y-80);
    
  }
}
