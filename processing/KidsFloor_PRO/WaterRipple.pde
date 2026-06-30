class WaterRipple {

  PVector pos;

  float radius;
  float alpha;
  float speed;

  WaterRipple(float x, float y, float force) {

    pos = new PVector(x, y);

    radius = 10;

    speed = map(force, 0, 30, 3, 10);

    alpha = 255;

  }

  void update() {

    radius += speed;

    alpha -= 3.5;

  }

  boolean dead() {

    return alpha <= 0;

  }

  void render() {

    noFill();

    strokeWeight(3);

    stroke(80, 180, 255, alpha);

    ellipse(pos.x, pos.y, radius, radius);

    stroke(120, 220, 255, alpha * 0.5);

    ellipse(pos.x, pos.y, radius * 0.7, radius * 0.7);

  }

}
