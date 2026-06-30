class SmokeSystem {

  ArrayList<SmokeParticle> particles;

  SmokeSystem() {

    particles = new ArrayList<SmokeParticle>();

  }

  void emit(float x, float y, float speed) {

    int amount = int(map(speed, 0, 30, 2, 18));

    amount = constrain(amount, 2, 18);

    for (int i = 0; i < amount; i++) {

      SmokeParticle p = new SmokeParticle(x, y);

      p.vel.mult(random(0.8, 1.8) + speed * 0.08);

      particles.add(p);

    }

  }

  void update() {

    for (int i = particles.size()-1; i >= 0; i--) {

      SmokeParticle p = particles.get(i);

      p.update();

      if (p.dead()) {

        particles.remove(i);

      }

    }

  }

  void render() {

    blendMode(ADD);

    for (SmokeParticle p : particles) {

      p.render();

    }

    blendMode(BLEND);

  }

}
