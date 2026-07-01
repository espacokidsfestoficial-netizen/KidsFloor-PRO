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

  boolean contains(float px, float py) {

    return dist(px, py, x, y) < size * 0.45;

  }

void render() {

  imageMode(CENTER);

  if (imgStump != null) {

    image(imgStump, x, y, size, size);

  } else {

    ellipseMode(CENTER);

    fill(120,75,35);

    ellipse(x, y, size, size * 0.35);

  }

}
