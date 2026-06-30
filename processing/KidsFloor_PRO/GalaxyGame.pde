class GalaxyGame extends InteractiveGame {

  GalaxySystem galaxy;

  GalaxyGame() {

    super("Galaxy");

    galaxy = new GalaxySystem();

  }

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    galaxy.emit(
      foot.getPosition().x,
      foot.getPosition().y,
      foot.getSpeed()
    );

    galaxy.update();

  }

  void render() {

    background(0, 0, 15);

    galaxy.render();

    fill(255);

    textAlign(CENTER);

    textSize(28);

    text("GALAXY", width/2, 40);

  }

}
