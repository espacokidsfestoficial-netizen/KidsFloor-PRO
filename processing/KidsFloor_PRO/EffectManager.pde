class EffectManager {

  StarSystem stars;
  SmokeSystem smoke;
  WaterSystem water;
  SplashSystem splash;
  GalaxySystem galaxy;

  GameManager game;

  EffectManager() {

    stars = new StarSystem();
    smoke = new SmokeSystem();
    water = new WaterSystem();
    splash = new SplashSystem();
    galaxy = new GalaxySystem();

    game = new GameManager();

  }

  void update() {

    game.update();

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

      stars.emit(x, y, speed);

      break;

    case FloorModeManager.GALAXY:

  galaxy.emit(x, y, speed);

  break;

    case GameManager.TIC_TAC_TOE:

  // Próxima Sprint

  break;
    }

    smoke.update();
    water.update();
    splash.update();
    stars.update();
    galaxy.update();

  }

  void render() {

    switch(game.getGame()) {

    case GameManager.WATER:

      water.render();
      splash.render();
      break;

    case GameManager.FIRE:

      smoke.render();
      break;

    case GameManager.WATER_FIRE:

      water.render();
      splash.render();
      smoke.render();
      break;

    case GameManager.STARS:

    stars.render();

    break;

    case GameManager.GALAXY:

    galaxy.render();

    break;

case GameManager.TIC_TAC_TOE:

  fill(255);

  textAlign(CENTER);

  textSize(40);

  text("JOGO DA VELHA\nEM DESENVOLVIMENTO",
       width/2,
       height/2);

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
