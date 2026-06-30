class GameManager {

  static final int WATER = 0;
  static final int FIRE = 1;
  static final int WATER_FIRE = 2;
  static final int STARS = 3;
  static final int GALAXY = 4;
  static final int TIC_TAC_TOE = 5;

  int currentGame = WATER;

  InteractiveGame waterGame;
  InteractiveGame ticTacToe;

  GameManager() {

    waterGame = new WaterGame();
    ticTacToe = new TicTacToeGame();

  }

  void update() {

    if (keyPressed) {

      switch(key) {

      case '1':
        currentGame = WATER;
        break;

      case '6':
        currentGame = TIC_TAC_TOE;
        break;

      }

    }

    InteractiveGame g = getCurrentGame();

    if (g != null) {

      g.update();

    }

  }

  void render() {

    InteractiveGame g = getCurrentGame();

    if (g != null) {

      g.render();

    }

  }

  InteractiveGame getCurrentGame() {

    switch(currentGame) {

    case WATER:

      return waterGame;

    case TIC_TAC_TOE:

      return ticTacToe;

    }

    return null;

  }

}
