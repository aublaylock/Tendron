Cluster gary;
void setup(){
  size(1000,1000);
  strokeWeight(10);
}
void draw(){
}
void mousePressed(){
  background(255,255,255);
  gary = new Cluster(mouseX, mouseY, 20, 5, 3);
  gary.show();
}
