class Mole {

  TreeStump stump;

  boolean visible = false;

  float anim = 0;

  boolean rising = true;

  int bornTime;

  Mole() {
  }

  void show(TreeStump s) {

    stump = s;

    visible = true;

    rising = true;

    anim = 0;

    bornTime = millis();

  }

  void hide() {

    rising = false;

  }

  void update() {

    if (!visible) return;

    if (rising) {

      anim += 0.08;

      if (anim > 1) anim = 1;

    } else {

      anim -= 0.08;

      if (anim <= 0) {

        anim = 0;

        visible = false;

      }

    }

  }

  void render() {

    if (!visible) return;

    float jump = lerp(35, -5, anim);

    imageMode(CENTER);

    if (imgMole != null) {

      image(
        imgMole,
        stump.x,
        stump.y + jump,
        95,
        95
      );

    } else {

      fill(70,170,255);

      ellipse(
        stump.x,
        stump.y + jump,
        70,
        70
      );

    }

  }

}
