class Fish {

  PVector pos;
  PVector vel;

  float size;
  color body;

  Fish() {

    pos = new PVector(random(width), random(height));

    vel = PVector.random2D();
    vel.mult(random(1.0, 2.5));

    size = random(25, 45);

    body = color(
      random(80,255),
      random(80,255),
      random(80,255)
    );

  }

  void update(PVector foot) {

    float d = dist(pos.x, pos.y, foot.x, foot.y);

    if (d < 180) {

      PVector flee = PVector.sub(pos, foot);

      flee.normalize();

      flee.mult(0.6);

      vel.add(flee);

    }

    vel.limit(3);

    pos.add(vel);

    vel.mult(0.98);

    if (pos.x < -60) pos.x = width + 60;
    if (pos.x > width + 60) pos.x = -60;

    if (pos.y < -60) pos.y = height + 60;
    if (pos.y > height + 60) pos.y = -60;

  }

  void render() {

    pushMatrix();

    translate(pos.x, pos.y);

    rotate(atan2(vel.y, vel.x));

    noStroke();

    fill(body);

    ellipse(0, 0, size, size * 0.55);

    triangle(
      -size * 0.5, 0,
      -size, -size * 0.25,
      -size, size * 0.25
    );

    fill(255);

    circle(size * 0.2, -3, 4);

    popMatrix();

  }

}
