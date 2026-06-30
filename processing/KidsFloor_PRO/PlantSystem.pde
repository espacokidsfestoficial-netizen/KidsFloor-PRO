import java.util.ArrayList;

class PlantSystem {

  ArrayList<Plant> plants;

  PlantSystem() {

    plants = new ArrayList<Plant>();

    for (int i = 0; i < 18; i++) {

      plants.add(
        new Plant(
          map(i, 0, 17, 60, width - 60)
        )
      );

    }

  }

  void update() {

    for (Plant p : plants) {

      p.update();

    }

  }

  void render() {

    for (Plant p : plants) {

      p.render();

    }

  }

}
