class TreeStump {

  float x, y;
  float size;

  boolean active = false;

  TreeStump(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void render() {

    ellipseMode(CENTER);

    noStroke();

    fill(60,35,15,80);
    ellipse(x,y+10,size*1.05,size*0.30);

    fill(120,75,35);
    ellipse(x,y,size,size*0.35);

    fill(185,145,95);
    ellipse(x,y,size*0.82,size*0.22);

    fill(40);
    ellipse(x,y,size*0.45,size*0.10);

    if(active){

      drawMole();

    }

  }

  void drawMole(){

    fill(70,170,255);

    ellipse(x,y-12,70,70);

    fill(255);

    ellipse(x-12,y-20,14,14);
    ellipse(x+12,y-20,14,14);

    fill(0);

    ellipse(x-12,y-20,5,5);
    ellipse(x+12,y-20,5,5);

    ellipse(x,y-4,8,8);

  }

  boolean contains(float px,float py){

    return dist(px,py,x,y)<45;

  }

}
