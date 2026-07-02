class LavaBackground {

  float offset = 0;

  void update() {

    offset += 1.2;

  }

  void render() {

    noStroke();

    for (int y = 0; y < height; y += 8) {

      float n = noise(y * 0.02, offset * 0.01);

      fill(

        255,

        80 + n * 120,

        20

      );

      rect(0, y, width, 8);

    }

    for (int i = 0; i < 60; i++) {

      fill(255, random(80, 180), 0, 80);

      ellipse(

        random(width),

        random(height),

        random(5, 15),

        random(5, 15)

      );

    }

  }

}
