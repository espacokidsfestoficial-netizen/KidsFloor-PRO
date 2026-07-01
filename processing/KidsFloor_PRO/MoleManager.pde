class MoleManager {

  TreeStump[] stumps;
  Mole mole;

  int[] order = new int[9];
  int index = 0;

  int nextTime;

  MoleManager(TreeStump[] s) {

    stumps = s;
    mole = new Mole();

    shuffleOrder();

    spawn();

  }

  void shuffleOrder() {

    for (int i = 0; i < order.length; i++) {
      order[i] = i;
    }

    for (int i = order.length - 1; i > 0; i--) {

      int j = int(random(i + 1));

      int t = order[i];
      order[i] = order[j];
      order[j] = t;

    }

    index = 0;

  }

  void spawn() {

    if (index >= order.length) {

      shuffleOrder();

    }

    mole.show(stumps[order[index]]);
println("Spawn no tronco: " + current);

    index++;

    nextTime = millis() + 1800;

  }

  void update() {

    mole.update();

    if (!mole.visible) {

      spawn();

      return;

    }

    if (millis() > nextTime) {

      mole.hide();

    }

  }

  void render() {

    mole.render();

  }

  boolean hit(float px, float py) {

    if (!mole.visible)
      return false;

    TreeStump s = mole.stump;

    if (s.contains(px, py)) {

      mole.hide();

      return true;

    }

    return false;

  }

  float getX() {

    return mole.stump.x;

  }

  float getY() {

    return mole.stump.y;

  }

}
