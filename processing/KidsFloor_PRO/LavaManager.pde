class LavaManager {

  LavaGrid grid;

  int state = 0;

  // 0 = mostrando tudo
  // 1 = contagem
  // 2 = lava

  int countdown = 3;

  int timer;

  LavaManager(LavaGrid g) {

    grid = g;

    startRound();

  }

  void startRound() {

    // Todos seguros
    for (int x = 0; x < grid.cols; x++) {

      for (int y = 0; y < grid.rows; y++) {

        grid.tiles[x][y].safe = true;

      }

    }

    state = 0;

    timer = millis() + 2000;

  }

  void update() {

    switch(state) {

    case 0:

      if (millis() > timer) {

        grid.randomize();

        countdown = 3;

        state = 1;

        timer = millis() + 1000;

      }

      break;

    case 1:

      if (millis() > timer) {

        countdown--;

        timer = millis() + 1000;

        if (countdown <= 0) {

          state = 2;

          timer = millis() + 4000;

        }

      }

      break;

    case 2:

      if (millis() > timer) {

        startRound();

      }

      break;

    }

  }

  void renderHUD() {

    fill(255);

    textAlign(CENTER);

    if (state == 1) {

      textSize(120);

      text(countdown, width/2, 140);

    }

  }

}
