class TreeStump {

  float x;
  float y;
  float size;

  boolean active = false;

  float jump = 0;

  TreeStump(float x, float y, float size) {

    this.x = x;
    this.y = y;
    this.size = size;

  }

 void render() {

  imageMode(CENTER);

  if (imgStump != null) {

    image(imgStump, x, y, size, size);

  } else {

    ellipseMode(CENTER);

    fill(120,75,35);

    ellipse(x,y,size,size*0.35);

  }

  jump = sin(frameCount*0.12)*4;

  if(active){

    drawMole();

  }

}

 void drawMole(){

  imageMode(CENTER);

  float py = lerp(y+30,y-18,rise)+jump;

  if(imgMole!=null){

    image(imgMole,x,py,90,90);

  }else{

    fill(70,170,255);

    ellipse(x,py,70,70);

  }

}
