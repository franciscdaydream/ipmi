/*Franco D'Angelo
 88224/2
 Comision 3
 Nota: me di cuenta cuando estaba haciendo la pantalla 3 de que podia optimizar el codigo, si esta desordenado antes de la pantalla 4 es porque no me dio tiempo de arreglarlo, disculpas de antemano
 */
String estado;
PImage fondo;
PImage logoi;
PImage ttrpgej;
PImage vamej, dunej, aniej, somej;
PFont tipog;
boolean comienzo = false;
boolean reinicio = false;
boolean mov1 = false;
boolean mov2 = false;
boolean t1 = false;
boolean t2 = false;
boolean t3= false;
boolean t4 = false;
boolean t5 = false;
boolean t1a = false;
boolean t2a = false;
boolean t3a = false;
boolean t1b = false;
boolean t2b = false;
boolean t3b = false;
boolean mov3 = false;
boolean t1c = false;
boolean t2c = false;
boolean t3c = false;
boolean t4c = false;
boolean t5c = false;
boolean t1d = false;
boolean t2d = false;
boolean t3d = false;
boolean t4d = false;
boolean mov4 =false;
boolean t1e = false;
boolean t2e = false;
boolean t3e = false;
boolean t4e = false;
boolean t5e = false;
int tr1, tr2, tr3, tr4, tr5;
int car1 = 680;
int tr1a, tr2a, tr3a;
int posdX=650;
int posdX1=670;
int posdX2=690;
int posdX3=710;
int posdX4=730;
int posdX5=750;
int tr1b, tr2b, tr3b;
int postX=-450;
int postX1=-550;
int postX2=-650;
int postX3=-750;
int postX4=-850;
int postX5=-950;
int poscY=150;
int posnXa=-200;
int posnXb=680;
int posnY=500;
int tr1c, tr2c, tr3c, tr4c, tr5c;
int tr1d, tr2d, tr3d, tr4d;
int poshY=600;
int tr1e, tr2e, tr3e, tr4e, tr5e;
float contador;
int botonx = 270;
int botony = 350;
int botonw = 300;
int botonh = 50;
int botonx1 = 410;
int botony1 = 240;
int botonw1 = 160;
int botonh1 = 100;
boolean botonI = false;
boolean botonII = false;

void setup() {
  size(640, 480, P3D);

  fondo = loadImage("fondo.jpg");
  logoi = loadImage("dndlogo.png");

  ttrpgej = loadImage("ttrpgej.jpg");
  vamej= loadImage("vamej.jpg");
  somej= loadImage("somej.jpg");
  dunej= loadImage("dunej.jpg");
  aniej= loadImage("aniej.jpg");
  tr1 = 0;
  tipog = loadFont("Cambria-30.vlw");
  estado = "inicio";
}

void draw() {
  background(0);
  lights();
  println(contador);
  textSize(40);
  textFont(tipog);

  //inicio
  if (botonI) {
    contador += 0.4;
  } else {
    contador = 1;
  }
  if ((contador > 0) && (contador < 2)) {
    estado = "inicio";
  }


  if ( estado.equals("inicio") ) {
    background(0);
    fill(255);
    image(fondo, 0, 0, 640, 480);
    image(logoi, 100, 10, 450, 230);

    text( "Concepto y Sistema", width/3+20, 200 );
    textSize(30);
    fill(255);
    quad(250, 330, 410, 330, 410, 400, 250, 400);
    fill(0);
    textSize(30);
    text("Comenzar", botonx-5, botony+25);
  }

  //Temporizador

  if ( contador/60 >= 2 ) {
    estado = "pan1";
  }

  if (contador/60 >= 3) {
    t1 = true;
  } else {
    t1 = false;
  }
  if (t1) {
    tr1 +=40;
  } else {
    tr1 = 0;
  }


  if (contador/60 >= 4) {
    t2 = true;
  } else {
    t2 = false;
  }
  if (t2) {
    tr2 +=40;
  } else {
    tr2 =0;
  }

  if (contador/60 >= 5) {
    t3 = true;
  } else {
    t3 = false;
  }
  if (t3) {
    tr3 +=40;
  } else {
    tr3 = 0;
  }

  if (contador/60 >= 6) {
    t4 = true;
  } else {
    t4 = false;
  }
  if (t4) {
    tr4 +=40;
  } else {
    tr4 = 0;
  }

  if (contador/60 >= 7) {
    t5 = true;
  } else {
    t5 = false;
  }
  if (t5) {
    tr5 +=40;
  } else {
    tr5 = 0;
  }

  if ((contador/60 >= 10) && (car1 > 220)) {
    mov1 = true;
  } else {
    mov1 =false;
  }
  if (mov1) {
    car1 -=3;
  }

  //pantalla 2
  if ( contador/60 >= 22) {
    estado = "pan2";
  }
  if (contador/60 >= 23) {
    t1a = true;
  } else {
    t1a = false;
  }
  if (t1a) {
    tr1a +=40;
  } else {
    tr1a = 0;
  }
  if (contador/60 >= 24) {
    t2a = true;
  } else {
    t2a = false;
  }
  if (t2a) {
    tr2a +=40;
  } else {
    tr2a = 0;
  }
  if (contador/60 >= 25) {
    t3a = true;
  } else {
    t3a = false;
  }
  if (t3a) {
    tr3a +=40;
  } else {
    tr3a = 0;
  }
  if ((contador/60 >= 26) && (posdX > 150)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    posdX -=3;
  }
  if ((contador/60 >= 26) && (posdX1 > 150)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    posdX1 -=3;
  }
  if ((contador/60 >= 26) && (posdX2 > 150)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    posdX2 -=3;
  }
  if ((contador/60 >= 26) && (posdX3 > 150)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    posdX3 -=3;
  }
  if ((contador/60 >= 26) && (posdX4 > 150)) {
    mov2 = true;
  }
  if (mov2) {
    posdX4 -=3;
  }
  if ((contador/60 >= 26) && (posdX5 > 150)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    posdX5 -=3;
  }

  //Pantalla 3

  if ( contador/60 >= 42) {
    estado = "pan3";
  }

  if (contador/60 >= 43) {
    t1b = true;
  } else {
    t1b= false;
  }
  if (t1b) {
    tr1b +=40;
  } else {
    tr1b = 0;
  }

  if (contador/60 >= 44) {
    t2b = true;
  }
  if (t2b) {
    tr2b +=30;
  }
  if (contador/60 >= 45) {
    t3b = true;
  }
  if (t3b) {
    tr3b +=30;
  }

  if ((contador/60 >= 46) && (postX < 30)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    postX +=5;
  }
  if ((contador/60 >= 46) && (postX1 < 30)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    postX1 +=5;
  }

  if ((contador/60 >= 46) && (postX2 < 30)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    postX2 +=5;
  }

  if ((contador/60 >= 46) && (postX3 < 30)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    postX3 +=5;
  }

  if ((contador/60 >= 46) && (postX4 < 30)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    postX4 +=5;
  }
  if ((contador/60 >= 46) && (postX5 < 30)) {
    mov2 = true;
  } else {
    mov2 =false;
  }
  if (mov2) {
    postX5 +=5;
  }




  //pantalla 4

  if ( contador/60 >= 62) {
    estado = "pan4";
  }
  if ((contador/60 >= 67) &&  (posnXa < 280) && (posnXb > 340)) {
    mov3 = true;
  } else {
    mov3 =false;
  }
  if (mov3) {
    posnXa +=6;
  }
  if (mov3) {
    posnXb -=5;
  }
  if (mov3) {
    posnY -=5;
  }

  if (contador/60 >= 63) {
    t1c = true;
  } else {
    t1c = false;
  }
  if (t1c) {
    tr1c +=30;
  } else {
    tr1c =0;
  }
  if (contador/60 >= 64) {
    t2c = true;
  } else {
    t2c = false;
  }
  if (t2c) {
    tr2c +=30;
  } else {
    tr2c = 0;
  }
  if (contador/60 >= 65) {
    t3c = true;
  } else {
    t3c = false;
  }
  if (t3c) {
    tr3c +=30;
  } else {
    tr3c =0;
  }

  if (contador/60 >= 66) {
    t4c = true;
  } else {
    t4c = false;
  }
  if (t4c) {
    tr4c +=30;
  } else {
    tr4c = 0;
  }
  if (contador/60 >= 67) {
    t5c = true;
  } else {
    t5c = false;
  }
  if (t5c) {
    tr5c +=30;
  } else {
    tr5c = 0;
  }


  //pantalla 5

  if ( contador/60 >= 82) {
    estado = "pan5";
  }

  if (contador/60 >= 83) {
    t1d = true;
  } else {
    t1d = false;
  }
  if (t1d) {
    tr1d +=40;
  } else {
    tr1d =0;
  }

  if (contador/60 >= 84) {
    t2d = true;
  } else {
    t2d = false;
  }
  if (t2d) {
    tr2d +=40;
  } else {
    tr2d = 0;
  }

  if (contador/60 >= 85) {
    t3d = true;
  } else {
    t3d = false;
  }
  if (t3d) {
    tr3d +=40;
  } else {
    tr3d = 0;
  }



  if (contador/60 >= 86) {
    t4d = true;
  } else {
    t4d = false;
  }
  if (t4d) {
    tr4d +=40;
  } else {
    tr4d = 0;
  }

  if ((contador/60 >= 86) && ( poshY > 140)) {
    mov3 = true;
  } else {
    mov3 =false;
  }
  if (mov3) {
    poshY -=3;
  }



  //pantalla final
  if ( contador/60 >= 102) {
    estado = "end";
  }

  if (contador/60 >= 103) {
    t1e = true;
  } else {
    t1e = false;
  }
  if (t1e) {
    tr1e +=40;
  } else {
    tr1e = 0;
  }
  if (contador/60 >= 104) {
    t2e = true;
  } else {
    t2e = false;
  }
  if (t2e) {
    tr2e +=40;
  } else {
    tr2e = 0;
  }
  if (contador/60 >= 105) {
    t3e = true;
  } else {
    t3e = false;
  }
  if (t3e) {
    tr3e +=40;
  } else {
    tr3e = 0;
  }
  if (contador/60 >= 106) {
    t4e = true;
  } else {
    t4e = false;
  }
  if (t4e) {
    tr4e +=40;
  } else {
    tr4e = 0;
  }
  if (contador/60 >= 107) {
    t5e = true;
  } else {
    t5e = false;
  }
  if (t5e) {
    tr5e +=40;
  } else {
    tr5e =0;
  }



  //Pantalla 1
  if ( estado.equals("pan1") ) {
    background(0);
    fill(255, 255);
    textSize(24);
    image(fondo, 0, 0, 640, 480);
    image(ttrpgej, 380, 15, 240, 180);
    fill(150, 150, 250, tr1);
    text("¿Que es Dungeons and Dragons?", 15, 50);
    fill(255, tr2);
    text("¡Es un TTRPG!", 220, 110);
    fill(150, 150, 250, tr3);
    text("...", 15, 170);
    fill(150, 150, 250, tr4);
    text("¿Y que es un TTRPG?", 35, 170);
    fill(255, tr5);
    text("Los TTRPG son un tipo de juego de mesa en los cuales", 15, 220);
    text("los jugadores tienen influencia en la historia narrada", 15, 250);
    text("haciendo que el mundo cambie a traves de sus personajes,", 15, 280);
    text("de ahi sus siglas Table Top Role Play Game.", 15, 310);
    text(" Algunos ejemplos:", 15, 340);
    textSize(18);
    //ejemplos movimiento
    image(dunej, car1, 325, 75, 120);
    image(vamej, car1+100, 325, 75, 120);
    image(somej, car1+200, 325, 75, 120);
    image(aniej, car1+300, 325, 75, 120);
    text("D&D 5e", car1, height-15);
    text("Vampiro", car1+100, height-15);
    text("S. Urbanas", car1+200, height-15);
    text("Anima B.", car1+300, height-15);

    //pantalla 2
  } else if ( estado.equals("pan2") ) {
    background(0);
    textSize(24);
    image(fondo, 0, 0, 640, 480);
    fill(255, tr1a);
    textSize(30);
    text("Los dados", 40, 40);
    textSize(23);
    fill(255, tr2a);
    text("En los TTRPG se usan distintos dados con varias funciones.", 30, 80);
    fill(255, tr3a);
    text("Los mas comunes son:", 30, 100);
    textSize(18);
    text("El d4, tiene forma de piramide y es el dado mas chiquito", posdX, 140);
    text("El d6, suele ser el mas comun y facil de conseguir", posdX1, 200);
    text("El d8, el segundo menos usado pero bonito de ver", posdX2, 260);
    text("El d10, suelen usarse 2 o mas de estos al mismo tiempo", posdX3, 320);
    text("El d12, el menos usado y normalmente confundido por el d20", posdX4, 380);
    text("El d20, el mas popular en D&D, no tanto en otros sistemas", posdX5, 440);
    fill(255);
    pushMatrix();
    translate(80, 200, 0);
    rotateZ(1.15);
    rotateX(-0.3);
    noStroke();
    box(30);
    popMatrix();
/*  pushMatrix();
        translate(80, 200, 0);
    rotateZ(1.15);
    rotateX(-0.3);
    noStroke();
    
vertex(-100, -100, -100);
vertex( 100, -100, -100);
vertex(   0,    0,  100);

vertex( 100, -100, -100);
vertex( 100,  100, -100);
vertex(   0,    0,  100);

vertex( 100, 100, -100);
vertex(-100, 100, -100);
vertex(   0,   0,  100);

vertex(-100,  100, -100);
vertex(-100, -100, -100);
vertex(   0,    0,  100);
    popMatrix();
*/
    //pantalla 3
  } else if ( estado.equals("pan3") ) {
    background(0);
    textSize(24);
    image(fondo, 0, 0, 640, 480);
    textSize(30);
    fill(255, tr1b);
    text("Las Estadisticas", 40, 40);
    textSize(22);
    fill(255, tr2b);
    text("Las estadisticas en D&D se dividen en 6, dotando al personaje", 30, 75);
    text("de distintas habilidades de las cuales hablare en poco.", 30, 100);
    fill(255, tr3b);
    text("Pero ahi va un resumen de cada una:", 30, 125);
    textSize(28);
    fill(255, 0, 0);
    text("Fuerza", postX, 160);
    fill(0, 255, 0);
    text("Destreza", postX1, 210);
    fill(0, 0, 255);
    text("Constitución", postX2, 260);
    fill(150, 0, 190);
    text("Inteligencia", postX3, 310);
    fill(0, 200, 150);
    text("Sabiduria", postX4, 360);
    fill(250, 200, 0);
    text("Carisma", postX5, 410);
    textSize(20);
    fill(255);
    text("es la fuerza bruta de un personaje", postX+100, 160);
    text("muy usada por clases fisicas", postX+100, 180);
    text("es la agilidad de un personaje", postX1+120, 210);
    text("muy util para todas las clases", postX1+120, 230);
    text("es la resistencia de un personaje", postX2+160, 260);
    text("afecta a la vida y concentración", postX2+160, 280);
    text("es la capacidad cognitiva de un personaje", postX3+155, 310);
    text("muy util para clases de magia aprendida", postX3+155, 330);
    text("es la agudeza mental de un personaje", postX4+125, 360);
    text("muy util para clases de magia natural/divina", postX4+125, 380);
    text("es la fuerza personal de un personaje", postX5+110, 410);
    text("muy util para personajes de mucho hablar", postX5+110, 430);

    //pantalla 4
  } else if ( estado.equals("pan4") ) {
    background(0);
    tint(255);
    image(fondo, 0, 0, 640, 480);
    textSize(24);
    textSize(30);
    fill(255, tr1c);
    text("Los modificadores de estadistica", 40, 40);
    textSize(20);
    fill(150, 150, 250, tr2c);
    text("¿No ibas a explicar las habilidades?", 15, 60);
    fill(255, tr3c);
    text("Para un cacho, ahora vamos a eso", 220, 80);
    textSize(22);
    fill(255, tr4c);
    text("Para saber como afectan las caracteristicas a un personaje", 30, 110);
    text("es necesario saber el modificador de cada una.", 30, 130);
    fill(255, tr5c);
    text("El calculo es así:", 30, 150);
    fill(255);
    text("0-1", posnXa, 170);
    text("2-3", posnXa, 190);
    text("4-5", posnXa, 210);
    text("6-7", posnXa, 230);
    text("8-9", posnXa, 250);
    text("10-11", posnXa, 270);
    text("12-13", posnXa, 290);
    text("14-15", posnXa, 310);
    text("16-17", posnXa, 330);
    text("18-19", posnXa, 350);
    text("20-21", posnXa, 370);
    text("22-23", posnXa, 390);
    text("24-25", posnXa, 410);
    text("26-27", posnXa, 430);
    text("28-29", posnXa, 450);
    text("30", posnXa, 470);
    text("-5", posnXb, 170);
    text("-4", posnXb, 190);
    text("-3", posnXb, 210);
    text("-2", posnXb, 230);
    text("-1", posnXb, 250);
    text("0", posnXb, 270);
    text("+1", posnXb, 290);
    text("+2", posnXb, 310);
    text("+3", posnXb, 330);
    text("+4", posnXb, 350);
    text("+5", posnXb, 370);
    text("+6", posnXb, 390);
    text("+7", posnXb, 410);
    text("+8", posnXb, 430);
    text("+9", posnXb, 450);
    text("+10", posnXb, 470);
    noStroke();
    fill(255);
    quad(298, posnY, 302, posnY, 302, posnY+310, 298, posnY+310);


    //pantalla 5
  } else if ( estado.equals("pan5") ) {
    background(0);
    image(fondo, 0, 0, 640, 480);

    textSize(20);
    fill(255, tr1d);
    text("Ahora si", 30, 20);
    textSize(30);
    fill(255, tr2d);
    text("Las habilidades", 40, 50);
    textSize(24);
    fill(255, tr3d);
    text("Las habilidades se definen con cada clase y transfondo", 30, 80);
    fill(255, tr4d);
    text("y se clasifican segun que stat las modifica:", 30, 100);
    textSize(28);
    fill(255, 0, 0);
    text("Fuerza", 40, poshY);
    fill(0, 255, 0);
    text("Destreza", 340, poshY);
    fill(0, 0, 255);
    text("Constitución", 40, poshY+100);
    fill(150, 0, 190);
    text("Inteligencia", 340, poshY+100);
    fill(0, 200, 150);
    text("Sabiduria", 40, poshY+200);
    fill(250, 200, 0);
    text("Carisma", 340, poshY+200);
    fill(255);
    textSize(20);
    text("Atletismo", 40, poshY+25);
    text("Acrobacias", 340, poshY+25);
    text("Juego de manos", 340, poshY+45);
    text("Sigilo", 340, poshY+65);
    text("No hay habilidades", 40, poshY+125);
    text("Conocimiento arcano", 340, poshY+125);
    text("Historia", 340, poshY+145);
    text("Investigación", 340, poshY+165);
    text("Naturaleza", 440, poshY+145);
    text("Religión", 468, poshY+165);
    text("Trato con animales", 40, poshY+225);
    text("Perpicacia", 40, poshY+245);
    text("Medicina", 40, poshY+265);
    text("Percepcion", 140, poshY+245);
    text("Supervivencia", 135, poshY+265);
    text("Engaño", 340, poshY+225);
    text("Intimidación", 340, poshY+245);
    text("Actuación", 340, poshY+265);
    text("Persuación", 440, poshY+225);
    //pantalla END
  } else if ( estado.equals("end") ) {
    background(0);
    image(fondo, 0, 0, 640, 480);
    textSize(40);
    fill(255, tr5e);
    text("Fin.", 100, 270);
    textSize(22);
    text("Muchas gracias por ver", 100, 300);
    rect(botonx1, botony1, botonw1, botonh1);
    textSize(25);
    fill (0, tr5e);
    text("Reiniciar", botonx1+30, botony1+55);
    textSize(22);
    fill(255, tr1e);
    text("¿Entendiste que es D&D?", 60, 50);
    fill(150, 150, 250, tr2e);
    text("¡Es un TTRPG!", 180, 80);
    fill(255, tr3e);
    text("¿y que mas?", 60, 110);
    fill(150, 150, 250, tr4e);
    text("Que es medio complicado", 180, 140);
    text("pero gracias por explicarme", 180, 160);
  }
  if (botonII) {
    contador= 0;
    posdX=650;
    posdX1=670;
    posdX2=690;
    posdX3=710;
    posdX4=730;
    posdX5=750;
    car1 = 680;
    postX=-450;
    postX1=-550;
    postX2=-650;
    postX3=-750;
    postX4=-850;
    postX5=-950;
    poscY=150;
    posnXa=-200;
    posnXb=680;
    posnY=500;
    poshY=600;
  }
}


void mousePressed() {
  if ((mouseX > botonx) && (mouseX < botonx+botonw) && (mouseY > botony) && (mouseY < botony+botonh)|| (keyPressed)) {
    botonI = true;
  } else {
    botonI = false;
  }
  if ((mouseX > botonx1) && (mouseX < botonx1+botonw1) && (mouseY > botony1) && (mouseY < botony1+botonh1)|| (keyPressed)) {
    botonII = true;
  } else {
    botonII = false;
  }
}
