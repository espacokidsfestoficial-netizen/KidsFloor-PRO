class StarsGame extends InteractiveGame {

  StarSystem stars;

  StarsGame() {

    super("Stars");

    stars = new StarSystem();

  }

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    stars.emit(
      foot.getPosition().x,
      foot.getPosition().y,
      foot.getSpeed()
    );

    stars.update();

  }

  void render() {

    background(5, 5, 25);

    stars.render();

    fill(255);

    textAlign(CENTER);

    textSize(28);

    text("STARS", width/2, 40);

  }

}
