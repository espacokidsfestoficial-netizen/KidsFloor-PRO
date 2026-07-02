class LavaTile {

  float x, y;
  float w, h;

  boolean safe = true;

  float pulse = random(TWO_PI);

  LavaTile(float x, float y, float w, float h) {

    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

  }

  void render() {

    pulse += 0.05;

    rectMode(CORNER);

    noStroke();

    if (safe) {

      // Piso seguro
      fill(70, 170, 255);
      rect(x + 4, y + 4, w - 8, h - 8, 18);

      // Brilho
      fill(255, 60);
      rect(x + 12, y + 12, w - 24, 16, 8);

      // Borda
      noFill();
      stroke(255, 120);
      strokeWeight(2);
      rect(x + 4, y + 4, w - 8, h - 8, 18);

    } else {

      // Lava animada
      float glow = 150 + sin(pulse) * 80;

      fill(255, glow, 0);
      rect(x + 2, y + 2, w - 4, h - 4, 18);

      fill(255, 60, 0, 120);
      rect(x + 10, y + 10, w - 20, h - 20, 14);

      // Bolhas
      noStroke();

      fill(255, 220, 80, 140);

      ellipse(
        x + w * 0.35,
        y + h * 0.40 + sin(frameCount * 0.10 + pulse) * 6,
        10,
        10
      );

      ellipse(
        x + w * 0.70,
        y + h * 0.65 + cos(frameCount * 0.12 + pulse) * 8,
        14,
        14
      );

    }

  }

}
