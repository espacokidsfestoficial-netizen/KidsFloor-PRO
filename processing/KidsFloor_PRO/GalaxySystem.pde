class GalaxySystem {

  ArrayList<GalaxyParticle> particles;

  GalaxySystem() {

    particles = new ArrayList<GalaxyParticle>();

  }

  void emit(float x, float y, float speed) {

    int amount = int(map(speed, 0, 30, 1, 8));

    amount = constrain(amount, 1, 8);

    for (int i = 0; i < amount; i++) {

      particles.add(new GalaxyParticle(x, y, speed));

    }

  }

  void update() {

    for (int i = particles.size()-1; i >= 0; i--) {

      GalaxyParticle p = particles.get(i);

      p.update();

      if (p.dead()) {

        particles.remove(i);

      }

    }

  }

  void render() {

    blendMode(ADD);

    for (GalaxyParticle p : particles) {

      p.render();

    }

    blendMode(BLEND);

  }

}
