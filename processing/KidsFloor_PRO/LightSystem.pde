import java.util.ArrayList;

class LightSystem {

  ArrayList<LightRay> rays;

  LightSystem() {

    rays = new ArrayList<LightRay>();

    for (int i = 0; i < 6; i++) {

      rays.add(new LightRay());

    }

  }

  void update() {

    for (LightRay r : rays) {

      r.update();

    }

  }

  void render() {

    blendMode(ADD);

    for (LightRay r : rays) {

      r.render();

    }

    blendMode(BLEND);

  }

}
