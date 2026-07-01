class ForestGame extends InteractiveGame {

  TreeStump[] stumps;

  LeafSystem leaves;

  MoleManager mole;

  int score;

  int gameTime = 180;
  int startTime;

  boolean gameOver;
boolean lastMouse = false;

  ForestGame() {

    super("Forest Stomp");

    leaves = new LeafSystem();

    stumps = new TreeStump[9];

    float sx = width / 4.0;
    float sy = height / 4.0;

    int index = 0;

    for (int row = 1; row <= 3; row++) {

      for (int col = 1; col <= 3; col++) {

        stumps[index++] =
          new TreeStump(col * sx, row * sy, 120);

      }

    }

    mole = new MoleManager(stumps);

    startTime = millis();

  }

  void update() {

    if (gameOver)
      return;

    if ((millis() - startTime) / 1000 >= gameTime) {

      gameOver = true;
      return;

    }

    mole.update();

    leaves.update();

    if (mousePressed && !lastMouse) {

  if (mole.hit(mouseX, mouseY)) {

    score++;

    leaves.explode(
      mole.getX(),
      mole.getY()
    );

  }

}

lastMouse = mousePressed;

  }

  void render() {

    if (imgForest != null) {

      imageMode(CORNER);
      image(imgForest, 0, 0, width, height);

    } else {

      background(90, 170, 90);

    }

    for (TreeStump s : stumps)
      s.render();

    mole.render();

    leaves.render();

    drawHUD();

  }

  void drawHUD() {

    fill(255);

    textSize(28);

    textAlign(LEFT);

    text("Score: " + score, 20, 40);

    textAlign(RIGHT);

    int t = max(0, gameTime - (millis() - startTime) / 1000);

    text("Tempo: " + t, width - 20, 40);

    textAlign(CENTER);

    text("FOREST STOMP", width / 2, 40);

    if (gameOver) {

      fill(0, 180);

      rect(0, 0, width, height);

      fill(255);

      textSize(60);

      text("FIM DE JOGO", width / 2, height / 2);

    }

  }

}
