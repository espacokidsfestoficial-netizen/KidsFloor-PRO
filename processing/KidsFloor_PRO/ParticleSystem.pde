class ParticleSystem {

  ArrayList<Particle> particles;

  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }

  void update() {

    // Cria 3 partículas por frame
    for (int i = 0; i < 3; i++) {
      particles.add(new Particle(random(width), random(height)));
    }

    // Atualiza partículas
    for (int i = particles.size() - 1; i >= 0; i--) {

      Particle p = particles.get(i);

      p.update();

      if (p.dead()) {
        particles.remove(i);
      }
    }
  }

  void render() {

    blendMode(ADD);

    for (Particle p : particles) {
      p.render();
    }

    blendMode(BLEND);
  }
}
