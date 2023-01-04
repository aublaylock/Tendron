class Tendril{
  int x, y, segments, depth, tendrils;
  int angle;
  Tendril(int startX, int startY,int numSegments, int numTendrils, int angle, int depth){
    x = startX;
    y = startY;
    tendrils = numTendrils;
    segments = numSegments;
    this.angle = angle;
    this.depth = depth;
  }
  void show(){
    int endX, endY;
    strokeWeight(depth*3);
    if(depth==1)
      stroke(0, 255, 255);
    if(depth==2)
      stroke(0, 127, 255);
    if(depth==3)
      stroke(0, 0, 255);
      
    for(int i = 0; i<segments; i++){
      angle += (int)(Math.random()*51)-26;
      endX = (int)(x+Math.cos(radians(angle))*20);
      endY = (int)(y+Math.sin(radians(angle))*20);
      line(x, y, endX, endY);
      ellipse(x,y,5,5);
      x = endX;
      y = endY;
    }
    Cluster sub;
    sub = new Cluster(x,y, segments/2, tendrils, depth-1);
    if(depth>1)
      sub.show();
  }
}
