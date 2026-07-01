class LeafParticle {

  PVector pos;
  PVector vel;

  float life = 255;

  LeafParticle(float x, float y) {

    pos = new PVector(x, y);

    vel = PVector.random2D();
    vel.mult(random(2, 7));

  }

  void update() {

    pos.add(vel);

    vel.mult(0.97);

    life -= 5;

  }

  void render() {

    noStroke();

    fill(70, 220, 70, life);

    ellipse(pos.x, pos.y, 8, 8);

  }

  boolean dead() {

    return life <= 0;

  }

}
