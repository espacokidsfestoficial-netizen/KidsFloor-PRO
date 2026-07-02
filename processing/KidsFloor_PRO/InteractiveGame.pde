abstract class InteractiveGame {

  String name;

  InteractiveGame(String n) {

    name = n;

  }

  abstract void update();

  abstract void render();

  String getName() {

    return name;

  }

}
