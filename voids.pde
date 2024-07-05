
void lineasH( float col1, float black, float posY, float tamW) {
  pushMatrix();
  translate(400, 0);  
  fill(col1, 90, black);
  noStroke();
  rectMode(CENTER);
  rect(200, posY, tamW, 5);  
  popMatrix();
}

void lineasV( float col2, float black, float posY1, float posX, float posX1) {
  pushMatrix();
  translate(600, 0);
  fill(col2, 90, black);
  rectMode(CORNER);
  rect(posX-1, 0, 1.2, posY1+2);
  rect(posX1, 0, 1.2, posY1+2);
  popMatrix();
}
