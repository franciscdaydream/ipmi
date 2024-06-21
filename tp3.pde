/* Video: https://youtu.be/4GIoSZUgqj4
 TP3 IPMI
 Alumno: Franco D'Angelo 88224/2
 */
float black=0;
PImage ref;
int col;
void setup() {
  size (800, 400);
  ref = loadImage("ref.png");
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(360, 0, 100);

  fill(0);

  for (int a=2; a < mouseY; a+=5) {
    for (int b=mouseY; b > 0; b-=5) {
      for (int c=0; c < mouseY; c+=5) {
        //VARIABLES

        float col1 = map (a, 0, height, 0, 360);
        float col2 = map (b, 0, 196, 0, 360);
        float posY = a * 1.7;
        float tamW = a *1.7;
        float posX = b * -1;
        float posY1 = b * 2;
        float gros = 1.2;
        float posXa = b;
        float posYb = b * 2;

        //parametros
        pushMatrix();
        translate(400, 0);
        fill(col1, 90, black);
        noStroke();
        rectMode(CENTER);
        rect(200, posY, tamW, 5);
        popMatrix();
        pushMatrix();
        translate(600, 0);
        fill(col2, 90, black);
        rectMode(CORNER);
        rect(posX-1, 0, gros, posY1+2);
        rect(posXa, 0, gros, posYb+2);
        popMatrix();
      }
    }
  }
  image(ref, 0, 0, 400, 400);
  if (keyPressed) {
    mouseY = 400;
    black = 0;
  }
}

void mousePressed () {

  if (black == 0) {
    black = 100;
  } else {
    black = 0;
  }
}
