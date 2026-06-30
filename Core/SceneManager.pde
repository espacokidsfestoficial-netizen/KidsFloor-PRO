
class SceneManager {

  SplashScene splash;

  Engine engine;

  int scene = 0;

  final int SPLASH = 0;
  final int MENU = 1;
  final int GAME = 2;

  SceneManager() {

    splash = new SplashScene();

    engine = new Engine();

  }

  void update() {

    switch(scene) {

    case SPLASH:

      splash.update();

      engine.update();

      if (frameCount > 360) {

        scene = MENU;

      }

      break;

    case MENU:

      background(10, 15, 30);

      break;

    case GAME:

      break;

    }

  }

  void render() {

    switch(scene) {

    case SPLASH:

      splash.render();

      engine.render();

      break;

    case MENU:

      drawMenu();

      break;

    case GAME:

      break;

    }

  }

  void drawMenu() {

    background(10, 15, 30);

    fill(255);

    textAlign(CENTER, CENTER);

    textSize(54);

    text("KIDSFLOOR PRO", width/2, 140);

    textSize(26);

    text("EM DESENVOLVIMENTO", width/2, 190);

    drawButton(width/2, 320, "ÁGUA");

    drawButton(width/2, 400, "FOGO FÁTUO");

    drawButton(width/2, 480, "AQUÁRIO");

    drawButton(width/2, 560, "JOGO DA VELHA");

  }

  void drawButton(float x, float y, String txt) {

    rectMode(CENTER);

    stroke(80, 180, 255);

    strokeWeight(2);

    fill(20, 30, 50);

    rect(x, y, 360, 60, 15);

    fill(255);

    textSize(24);

    text(txt, x, y-2);

  }

}
