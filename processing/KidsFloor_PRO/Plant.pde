class Plant {

  float x;
  float h;
  float phase;
  float amp;

  Plant(float px) {

    x = px;

    h = random(120, 260);

    phase = random(TWO_PI);

    amp = random(8, 20);

  }

  void update() {

    phase += 0.025;

  }

  void render() {

    stroke(30, 180, 80);

    strokeWeight(4);

    noFill();

    beginShape();

    for (int i = 0; i <= 20; i++) {

      float t = map(i, 0, 20, 0, 1);

      float yy = height - h * t;

      float xx = x + sin(phase + t * 4) * amp * t;

      curveVertex(xx, yy);

    }

    endShape();

  }

}
