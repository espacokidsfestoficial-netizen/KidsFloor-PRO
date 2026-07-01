class TreeStump {

int id;
  float x;
  float y;
  float size;

  boolean active = false;

TreeStump(float x, float y, float size, int id) {

  this.x = x;
  this.y = y;
  this.size = size;
  this.id = id;

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

      fill(120, 75, 35);

      ellipse(x, y, size, size * 0.35);

fill(255, 0, 0);
textAlign(CENTER, CENTER);
textSize(20);
text(id, x, y - 70);

    }

  }

}
