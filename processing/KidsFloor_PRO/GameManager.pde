class GameManager {

  static final int WATER = 0;
  static final int FIRE = 1;
  static final int WATER_FIRE = 2;
  static final int STARS = 3;
  static final int GALAXY = 4;
  static final int TIC_TAC_TOE = 5;

  int currentGame = WATER_FIRE;

  void update() {

    if (keyPressed) {

      switch(key) {

      case '1':
        currentGame = WATER;
        break;

      case '2':
        currentGame = FIRE;
        break;

      case '3':
        currentGame = WATER_FIRE;
        break;

      case '4':
        currentGame = STARS;
        break;

      case '5':
        currentGame = GALAXY;
        break;

      case '6':
        currentGame = TIC_TAC_TOE;
        break;

      }

    }

  }

  int getGame() {

    return currentGame;

  }

}
