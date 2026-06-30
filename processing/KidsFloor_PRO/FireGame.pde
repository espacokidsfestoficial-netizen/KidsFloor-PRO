class FireGame extends InteractiveGame {

  SmokeSystem smoke;

  FireGame() {

    super("Fire Spirit");

    smoke = new SmokeSystem();

  }

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    smoke.emit(
      foot.getPosition().x,
      foot.getPosition().y,
      foot.getSpeed()
    );

    smoke.update();

  }

  void render() {

    background(8, 8, 18);

    smoke.render();

    fill(255);

    textAlign(CENTER);

    textSize(28);

    text("FIRE SPIRIT", width/2, 40);

  }

}
