class StarParticle {

  PVector pos;
  PVector vel;

  float size;
  float alpha;
  float angle;
  float rotation;

  StarParticle(float x, float y, float speed) {

    pos = new PVector(x, y);

    float a = random(TWO_PI);

    vel = PVector.fromAngle(a);

    vel.mult(random(0.5, 2.0) + speed * 0.08);

    size = random(8, 18);

    alpha = 255;

    angle = random(TWO_PI);

    rotation = random(-0.08, 0.08);

  }

  void update() {

    pos.add(vel);

    vel.mult(0.985);

    angle += rotation;

    alpha -= 3;

  }

  boolean dead() {

    return alpha <= 0;

  }

  void render() {

    pushMatrix();

    translate(pos.x, pos.y);

    rotate(angle);

    stroke(255, 255, 180, alpha);
    strokeWeight(2);

    line(-size, 0, size, 0);
    line(0, -size, 0, size);

    strokeWeight(1);

    line(-size*0.7, -size*0.7, size*0.7, size*0.7);
    line(-size*0.7, size*0.7, size*0.7, -size*0.7);

    popMatrix();

  }

}
