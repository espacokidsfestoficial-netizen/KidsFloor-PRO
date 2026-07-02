class LavaTile {

  float x, y;
  float w, h;

  static final int SAFE = 0;
  static final int WARNING = 1;
  static final int LAVA = 2;

  int state = SAFE;

  float shake = 0;

  LavaTile(float x, float y, float w, float h) {

    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

  }

  void update() {

    if (state == WARNING) {

      shake = random(-2, 2);

    } else {

      shake = 0;

    }

  }

  void render() {

    pushMatrix();

    translate(shake, shake);

    rectMode(CENTER);

    stroke(30);

    strokeWeight(3);

    switch(state) {

    case SAFE:

      fill(80,170,255);

      break;

    case WARNING:

      if ((frameCount/8)%2==0)

        fill(255,220,80);

      else

        fill(255,120,40);

      break;

    case LAVA:

      fill(255,80,20);

      break;

    }

    rect(x,y,w,h,18);

    popMatrix();

  }

}
