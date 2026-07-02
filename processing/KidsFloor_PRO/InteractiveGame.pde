abstract class InteractiveGame {

  String name;

  InteractiveGame(String n) {

    name = n;

class LavaGame extends InteractiveGame {

    LavaGame() {

        super("Lava Escape");

    }

}
  }

  abstract void update();

  abstract void render();

  String getName() {

    return name;

  }

}
