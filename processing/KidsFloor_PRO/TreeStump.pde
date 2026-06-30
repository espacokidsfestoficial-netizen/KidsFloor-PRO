class TreeStump {

  float x;
  float y;
  float size;

  TreeStump(float x, float y, float size) {

    this.x = x;
    this.y = y;
    this.size = size;

  }

  void render() {

    ellipseMode(CENTER);

    // Sombra
    noStroke();
    fill(60, 35, 15, 80);
    ellipse(x, y + size * 0.08, size * 1.05, size * 0.28);

    // Tronco
    fill(120, 75, 35);
    ellipse(x, y, size, size * 0.35);

    fill(180, 140, 90);
    ellipse(x, y, size * 0.82, size * 0.23);

    fill(40);
    ellipse(x, y, size * 0.45, size * 0.12);

  }

  boolean contains(float px, float py) {

    return dist(px, py, x, y) < size * 0.35;

  }

}
