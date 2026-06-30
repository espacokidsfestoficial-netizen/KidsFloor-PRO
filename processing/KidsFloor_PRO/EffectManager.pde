class EffectManager {

  SmokeSystem smoke;
  WaterSystem water;
  SplashSystem splash;

  FloorModeManager mode;

  EffectManager() {

    smoke = new SmokeSystem();
    water = new WaterSystem();
    splash = new SplashSystem();

    mode = new FloorModeManager();

  }

  void update() {

    mode.update();

    if (sceneManager == null) return;
    if (sceneManager.engine == null) return;

    FootTracker foot = sceneManager.engine.getTracker();

    float x = foot.getPosition().x;
    float y = foot.getPosition().y;
    float speed = foot.getSpeed();

    switch(mode.getMode()) {

    case FloorModeManager.WATER:

      water.emit(x, y, speed);

      break;

    case FloorModeManager.FIRE:

      smoke.emit(x, y, speed);

      break;

    case FloorModeManager.WATER_FIRE:

      water.emit(x, y, speed);
      splash.emit(x, y, speed);
      smoke.emit(x, y, speed);

      break;

    case FloorModeManager.STARS:

      // Próxima Sprint

      break;

    case FloorModeManager.GALAXY:

      // Próxima Sprint

      break;

    }

    smoke.update();
    water.update();
    splash.update();

  }

  void render() {

    switch(mode.getMode()) {

    case FloorModeManager.WATER:

      water.render();
      splash.render();
      break;

    case FloorModeManager.FIRE:

      smoke.render();
      break;

    case FloorModeManager.WATER_FIRE:

      water.render();
      splash.render();
      smoke.render();
      break;

    case FloorModeManager.STARS:

      break;

    case FloorModeManager.GALAXY:

      break;

    }

    fill(255);
    textAlign(LEFT, TOP);
    textSize(18);

    text("1 Água", 20, 20);
    text("2 Fogo", 20, 45);
    text("3 Água + Fogo", 20, 70);
    text("4 Estrelas (em breve)", 20, 95);
    text("5 Galáxia (em breve)", 20, 120);

  }

}
