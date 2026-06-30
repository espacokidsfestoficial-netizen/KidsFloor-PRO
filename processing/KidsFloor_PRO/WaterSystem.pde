class WaterSystem {

  ArrayList<WaterRipple> ripples;

  WaterSystem() {

    ripples = new ArrayList<WaterRipple>();

  }

  void emit(float x, float y, float speed) {

    if (frameCount % 2 == 0) {

      ripples.add(new WaterRipple(x, y, speed));

    }

  }

  void update() {

    for (int i = ripples.size() - 1; i >= 0; i--) {

      WaterRipple r = ripples.get(i);

      r.update();

      if (r.dead()) {

        ripples.remove(i);

      }

    }

  }

  void render() {

    blendMode(ADD);

    for (WaterRipple r : ripples) {

      r.render();

    }

    blendMode(BLEND);

  }

}
