class WaterFireGame extends InteractiveGame {

  WaterSystem water;
  SplashSystem splash;
  SmokeSystem smoke;

  WaterFireGame() {

    super("Water + Fire");

    water = new WaterSystem();
    splash = new SplashSystem();
    smoke = new SmokeSystem();

  }

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    float x = foot.getPosition().x;
    float y = foot.getPosition().y;
    float speed = foot.getSpeed();

    water.emit(x, y, speed);
    splash.emit(x, y, speed);
    smoke.emit(x, y, speed);

    water.update();
    splash.update();
    smoke.update();

  }

  void render() {

    background(10, 20, 40);

    water.render();
    splash.render();
    smoke.render();

    fill(255);

    textAlign(CENTER);

    textSize(28);

    text("WATER + FIRE", width/2, 40);

  }

}
