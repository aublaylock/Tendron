class Cluster{
  private Tendril[] tendrils;
  Cluster(int x, int y, int numSegments, int numTendrils, int depth){
    tendrils = new Tendril[numTendrils];
    for(int i = 0; i<numTendrils; i++){
      tendrils[i] = new Tendril(x, y, numSegments, numTendrils, (int)(360/numTendrils*i), depth);
    }
  }
  void show(){
    for(Tendril tendril:tendrils){
      tendril.show();
    }
  }
}
