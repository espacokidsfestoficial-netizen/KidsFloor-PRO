class FloorModeManager {

  static final int WATER = 0;
  static final int FIRE = 1;
  static final int WATER_FIRE = 2;
  static final int STARS = 3;
  static final int GALAXY = 4;

  int mode = WATER_FIRE;

  void update() {

    if (keyPressed) {

      switch(key) {

      case '1':
        mode = WATER;
        break;

      case '2':
        mode = FIRE;
        break;

      case '3':
        mode = WATER_FIRE;
        break;

      case '4':
        mode = STARS;
        break;

      case '5':
        mode = GALAXY;
        break;

      }

    }

  }

  int getMode() {

    return mode;

  }

}
