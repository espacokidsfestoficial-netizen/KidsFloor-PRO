class AnswerPad {

  float x, y;
  float w = 230;
  float h = 230;

  color baseColor;

  int value;

  float animScale = 1;

  AnswerPad(float x, float y, color c) {

    this.x = x;
    this.y = y;
    baseColor = c;

  }

  boolean contains(float px, float py) {

    return px > x-w/2 &&
           px < x+w/2 &&
           py > y-h/2 &&
           py < y+h/2;

  }

  void render() {

    pushMatrix();

    translate(x,y);

    scale(animScale);

    rectMode(CENTER);

    noStroke();

    // sombra
    fill(0,70);
    rect(8,10,w,h,35);

    // placa
    fill(baseColor);
    rect(0,0,w,h,35);

    // brilho
    fill(255,45);
    rect(0,-65,w-20,40,20);

    fill(255);

    textAlign(CENTER,CENTER);

    textSize(70);

    text(value,0,10);

    popMatrix();

  }

}
