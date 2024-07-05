/* Video: https://youtu.be/bF68zVEYYtY
 TP3 IPMI RECUPERATORIO
 Alumno: Franco D'Angelo 88224/2
 */

float black=0;
PImage ref;

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

      float col1 = map (a, 0, height, 0, 360);
      float col2 = map (b, 0, 196, 0, 360);
      float posY = a * 1.7;
      float tamW = a *1.7;
      float posX = b * -1;
      float posY1 = b * 2;

      lineasH( col1, black, posY, tamW);
      lineasV( col2, black, posY1, posX, b);
    }
  }
  image(ref, 0, 0, 400, 400);

  boolean aColor = tPress(ENTER);
  {
    if (aColor) {
      black = 100;
    } else {
      black = 0;
    }
  }
  boolean reinicio = tPress(TAB);
  {
    if (reinicio) {
      mouseY = 400;
      black = 0;
    }
  }
}
