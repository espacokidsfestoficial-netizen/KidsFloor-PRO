class LightRay {

  float x;

  float w;

  float speed;

  float phase;

  LightRay() {

    x = random(width);

    w = random(80, 180);

    speed = random(0.15, 0.45);

    phase = random(TWO_PI);

  }

  void update() {

    phase += speed * 0.01;

  }

  void render() {

    noStroke();

    for (int i = 0; i < 30; i++) {

      float a = map(i, 0, 30, 35, 0);

      fill(255, 255, 220, a);

      rect(

        x + sin(phase) * 25 - w/2 + i,

        0,

        w/30,

        height

      );

    }

  }

}
