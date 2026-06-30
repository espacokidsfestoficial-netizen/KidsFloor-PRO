class SplashSystem {

  ArrayList<SplashParticle> particles;

  SplashSystem() {

    particles = new ArrayList<SplashParticle>();

  }

  void emit(float x, float y, float speed) {

    int amount = int(map(speed, 0, 30, 0, 10));

    amount = constrain(amount, 0, 10);

    for (int i = 0; i < amount; i++) {

      particles.add(new SplashParticle(x, y, speed));

    }

  }

  void update() {

    for (int i = particles.size()-1; i >= 0; i--) {

      SplashParticle p = particles.get(i);

      p.update();

      if (p.dead()) {

        particles.remove(i);

      }

    }

  }

  void render() {

    blendMode(ADD);

    for (SplashParticle p : particles) {

      p.render();

    }

    blendMode(BLEND);

  }

}
