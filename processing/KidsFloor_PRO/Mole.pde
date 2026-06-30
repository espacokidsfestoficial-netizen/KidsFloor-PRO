class Mole {

  TreeStump stump;

  float anim = 0;

  boolean visible = false;

  int timer = 0;

  Mole() {
  }

  void show(TreeStump s) {

    stump = s;

    visible = true;

    anim = 0;

    timer = millis();

  }

  void hide() {

    visible = false;

  }

  void update() {

    if (!visible) return;

    if (anim < 1) {
      anim += 0.08;
    }

    if (millis() - timer > 2000) {
      hide();
    }

  }

  void render() {

    if (!visible) return;

    float y = lerp(stump.y + 25, stump.y - 10, anim);

    noStroke();

    fill(70, 170, 255);

    ellipse(stump.x, y, 70, 70);

    fill(255);

    ellipse(stump.x - 12, y - 8, 14, 14);
    ellipse(stump.x + 12, y - 8, 14, 14);

    fill(0);

    ellipse(stump.x - 12, y - 8, 5, 5);
    ellipse(stump.x + 12, y - 8, 5, 5);

    fill(30);

    ellipse(stump.x, y + 8, 10, 8);

  }

}
