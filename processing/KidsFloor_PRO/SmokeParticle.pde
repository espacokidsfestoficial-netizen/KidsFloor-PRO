class SmokeParticle {

  PVector pos;
  PVector vel;

  float size;
  float alpha;
  float grow;

  color c;

  SmokeParticle(float x, float y) {

    pos = new PVector(x, y);

    float ang = random(TWO_PI);

    vel = PVector.fromAngle(ang);

    vel.mult(random(0.5, 2.5));

    size = random(10, 22);

    grow = random(0.25, 0.8);

    alpha = 255;

    float t = random(1);

    if (t < 0.33) {

      c = color(80, 220, 255);

    } else if (t < 0.66) {

      c = color(120, 120, 255);

    } else {

      c = color(180, 80, 255);

    }

  }

  void update() {

    pos.add(vel);

    vel.mult(0.985);

    vel.y -= 0.015;

    size += grow;

    alpha -= 2.8;

  }

  boolean dead() {

    return alpha <= 0;

  }

  void render() {

    noStroke();

    // Glow externo
    fill(red(c), green(c), blue(c), alpha * 0.08);
    ellipse(pos.x, pos.y, size * 4.2, size * 4.2);

    // Glow intermediário
    fill(red(c), green(c), blue(c), alpha * 0.22);
    ellipse(pos.x, pos.y, size * 2.5, size * 2.5);

    // Núcleo
    fill(red(c), green(c), blue(c), alpha);
    ellipse(pos.x, pos.y, size, size);

  }

}
