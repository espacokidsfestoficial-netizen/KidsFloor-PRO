class EffectManager {

  SmokeSystem smoke;
  WaterSystem water;
  SplashSystem splash;

  EffectManager() {

    smoke = new SmokeSystem();
    water = new WaterSystem();
    splash = new SplashSystem();

  }

  void update() {

    if (sceneManager == null) return;
    if (sceneManager.engine == null) return;

    FootTracker foot = sceneManager.engine.getTracker();

    float x = foot.getPosition().x;
    float y = foot.getPosition().y;
    float speed = foot.getSpeed();

    smoke.emit(x, y, speed);
    water.emit(x, y, speed);
    splash.emit(x, y, speed);

    smoke.update();
    water.update();
    splash.update();

  }

  void render() {

    water.render();
    splash.render();
    smoke.render();

  }

}
