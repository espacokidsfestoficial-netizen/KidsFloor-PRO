class StarSystem {

  ArrayList<StarParticle> stars;

  StarSystem() {

    stars = new ArrayList<StarParticle>();

  }

  void emit(float x, float y, float speed) {

    int amount = int(map(speed, 0, 30, 1, 6));

    amount = constrain(amount, 1, 6);

    for (int i = 0; i < amount; i++) {

      stars.add(new StarParticle(x, y, speed));

    }

  }

  void update() {

    for (int i = stars.size()-1; i >= 0; i--) {

      StarParticle s = stars.get(i);

      s.update();

      if (s.dead()) {

        stars.remove(i);

      }

    }

  }

  void render() {

    blendMode(ADD);

    for (StarParticle s : stars) {

      s.render();

    }

    blendMode(BLEND);

  }

}
