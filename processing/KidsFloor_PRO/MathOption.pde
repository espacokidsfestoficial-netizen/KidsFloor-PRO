class MathOption {

  float x, y;
  float w = 170;
  float h = 170;

  int value;

 float animScale = 1;

  MathOption(float x, float y, float size) {

    this.x = x;
    this.y = y;

    w = size + 40;
    h = size + 40;

  }

  boolean contains(float px, float py) {

    return px > x - w/2 &&
           px < x + w/2 &&
           py > y - h/2 &&
           py < y + h/2;

  }

  void render() {

    pushMatrix();

    translate(x, y);

    scale(animScale);

    rectMode(CENTER);

    noStroke();

    // sombra
    fill(0, 80);
    rect(8, 10, w, h, 28);

    // cartão
    fill(35, 160, 255);
    rect(0, 0, w, h, 28);

    // brilho
    fill(255, 40);
    rect(0, -40, w-20, 35, 18);

    // número
    fill(255);

    textAlign(CENTER, CENTER);

    textSize(58);

    text(value, 0, 8);

    popMatrix();

  }

}
