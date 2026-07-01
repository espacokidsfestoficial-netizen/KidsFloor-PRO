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

  void drawMole() {

    noStroke();

    // Corpo
    fill(90, 170, 255);
    ellipse(x, y - 18 + jump, 70, 70);

    // Barriga
    fill(140, 210, 255);
    ellipse(x, y - 8 + jump, 40, 30);

    // Olhos
    fill(255);
    ellipse(x - 14, y - 28 + jump, 14, 16);
    ellipse(x + 14, y - 28 + jump, 14, 16);

    // Pupilas
    fill(0);
    ellipse(x - 14, y - 28 + jump, 5, 5);
    ellipse(x + 14, y - 28 + jump, 5, 5);

    // Nariz
    fill(40);
    ellipse(x, y - 12 + jump, 10, 8);

    // Dentes
    fill(255);
    rectMode(CENTER);
    rect(x - 3, y - 2 + jump, 5, 8, 2);
    rect(x + 3, y - 2 + jump, 5, 8, 2);

  }

  boolean contains(float px, float py) {

    return dist(px, py, x, y) < 45;

  }

}
