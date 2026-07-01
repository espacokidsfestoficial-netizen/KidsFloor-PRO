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

boolean contains(float px, float py) {

  return dist(px, py, x, y) < size * 0.45;

}

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

if (active) {

    float jump = sin(frameCount * 0.15) * 4;

    imageMode(CENTER);

    image(
        imgMole,
        x,
        y - 42 + jump,
        90,
        90
    );

}
  }

}

 
