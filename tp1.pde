PImage foto;
void setup(){
  size(800,400);
  foto = loadImage("fotoref.jpg");
  }
  
void draw(){
  background(163,195,218);
  noStroke();
  fill(color(164,146,124));
  quad(0,170,400,170,400,400,0,400);
  fill(color(61,80,50));
  quad(0,180,400,180,400,400,0,400);
   fill(color(127,111,86));
 quad(220,190,290,190,380,220,230,220);
  fill(color(52,53,37));
   quad(0,180,300,180,280,190,0,190);
    fill(color(97,98,82));
    quad(0,220,400,220,400,320,0,280);
     fill(color(26,34,25));
    quad(0,230,250,230,180,400,0,400);
    fill(color(37,49,27));
    ellipse(120,360,80,75);
    ellipse(80,335,50,75);
    ellipse(60,330,50,75);
    ellipse(60,300,40,60);
    ellipse(110,300,40,60);
    ellipse(90,290,30,50);
    fill(color(37,55,31));
    ellipse(20,390,190,100);
    fill(color(65,81,94));
    ellipse(0,370,80,220);
   fill(color(30,41,37));
    quad(0,180,280,220,400,320,0,250);
     fill(color(97,98,82));
    quad(170,230,250,230,400,320,150,290);
    fill(color(65,81,94));
    ellipse(200,430,110,160);
    
  //la imagen
  image(foto,400,0, width/2,400);
 
  }
