class BackgroundFX {

  float offset = 0;

  BackgroundFX() {
  }

  void update() {

    offset += 0.003;

  }

  void render() {

    drawGradient();

    drawStars();

  }

  void drawGradient() {

    noStroke();

    for (int y = 0; y < height; y++) {

      float t = map(y, 0, height, 0, 1);

      int c = lerpColor(
        color(5, 8, 18),
        color(0, 25, 45),
        t
      );

      fill(c);

      rect(0, y, width, 1);

    }

  }

  void drawStars() {

    randomSeed(1);

    noStroke();

    for (int i = 0; i < 180; i++) {

      float x = random(width);

      float y = random(height);

      float b = 120 + 135 * sin(offset * 4 + i);

      fill(255, 255, 255, b);

      circle(x, y, random(1, 3));

    }

  }

}
