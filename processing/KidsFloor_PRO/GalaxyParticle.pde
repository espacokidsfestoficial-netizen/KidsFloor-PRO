class GalaxyParticle {

  PVector center;
  float angle;
  float radius;
  float speed;
  float alpha;
  float size;

  GalaxyParticle(float x, float y, float force) {

    center = new PVector(x, y);

    angle = random(TWO_PI);

    radius = random(5, 40);

    speed = random(0.02, 0.08);

    speed += force * 0.0008;

    alpha = 255;

    size = random(2, 5);

  }

  void update() {

    angle += speed;

    radius += 0.15;

    alpha -= 2.5;

  }

  boolean dead() {

    return alpha <= 0;

  }

  void render() {

    float x = center.x + cos(angle) * radius;
    float y = center.y + sin(angle) * radius;

    noStroke();

    fill(180, 220, 255, alpha);
    ellipse(x, y, size, size);

    fill(255, alpha * 0.35);
    ellipse(x, y, size * 3, size * 3);

  }

}
