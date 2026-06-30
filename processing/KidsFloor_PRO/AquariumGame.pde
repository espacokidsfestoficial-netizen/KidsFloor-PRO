class AquariumGame extends InteractiveGame {

  ArrayList<Fish> fishes;

  AquariumGame() {

    super("Aquarium");

    fishes = new ArrayList<Fish>();

    for (int i = 0; i < 25; i++) {

      fishes.add(new Fish());

    }

  }

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    PVector p = foot.getPosition();

    for (Fish f : fishes) {

      f.update(p);

    }

  }

  void render() {

    background(0, 40, 90);

    for (Fish f : fishes) {

      f.render();

    }

    fill(255);

    textAlign(CENTER);

    textSize(28);

    text("AQUARIUM", width/2, 40);

  }

}
