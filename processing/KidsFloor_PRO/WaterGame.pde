class WaterGame extends InteractiveGame {

  WaterSystem water;
  SplashSystem splash;

  WaterGame() {

    super("Interactive Water");

    water = new WaterSystem();
    splash = new SplashSystem();

  }

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    float x = foot.getPosition().x;
    float y = foot.getPosition().y;
    float speed = foot.getSpeed();

    water.emit(x, y, speed);
    splash.emit(x, y, speed);

    water.update();
    splash.update();

  }

  void render() {

    background(10, 40, 80);

    water.render();
    splash.render();

    fill(255);

    textAlign(CENTER);

    textSize(28);

    text("INTERACTIVE WATER", width/2, 40);

  }

}
