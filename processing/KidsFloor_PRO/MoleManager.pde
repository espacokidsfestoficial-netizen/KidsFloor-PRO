class MoleManager {

  TreeStump[] stumps;

  Mole mole;

  int current = -1;

  int last = -1;

  int nextTime = 0;

  MoleManager(TreeStump[] s) {

    stumps = s;

    mole = new Mole();

    spawn();

  }

  void spawn() {

    if (current != -1) {

      stumps[current].active = false;

    }

    do {

      current = int(random(stumps.length));

    } while (current == last);

    last = current;

    stumps[current].active = true;

    mole.show(stumps[current]);

    nextTime = millis() + 1800;

  }

void update() {

  mole.update();

  if (!mole.visible) {

    if (millis() > nextTime) {
      spawn();
    }

    return;

  }

  if (millis() > nextTime) {

    mole.hide();

    nextTime = millis() + 350;

  }

}
  void render() {

    mole.render();

  }

  boolean hit(float px, float py) {

    if (!mole.visible)
      return false;

    if (stumps[current].contains(px, py)) {

      mole.hide();

      stumps[current].active = false;

      return true;

    }

    return false;

  }

  float getX() {

    return stumps[current].x;

  }

  float getY() {

    return stumps[current].y;

  }

}
