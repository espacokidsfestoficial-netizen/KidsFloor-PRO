class LavaTile {

  float x, y;
  float w, h;

  boolean safe = true;

  float pulse = random(TWO_PI);

  float shake = 0;

  boolean warning = false;

  LavaTile(float x, float y, float w, float h) {

    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

  }

  void update() {

    pulse += 0.05;

    if (warning) {

      shake = random(-3, 3);

    } else {

      shake = 0;

    }

  }

  void render() {

    pushMatrix();

    translate(shake, shake);

    rectMode(CORNER);

    noStroke();

    if (safe) {

      fill(70,170,255);

      rect(x+4,y+4,w-8,h-8,18);

      fill(255,45);

      rect(x+12,y+12,w-24,18,8);

      stroke(255,120);

      strokeWeight(2);

      noFill();

      rect(x+4,y+4,w-8,h-8,18);

      if(warning){

        stroke(255);

        strokeWeight(2);

        line(x+20,y+18,x+w-20,y+h-20);

        line(x+25,y+h-25,x+w-35,y+25);

      }

    } else {

      float glow = 150 + sin(pulse)*80;

      noStroke();

      fill(255,glow,0);

      rect(x+2,y+2,w-4,h-4,18);

      fill(255,60,0,130);

      rect(x+10,y+10,w-20,h-20,14);

      fill(255,220,100,150);

      ellipse(

        x+w*0.35,

        y+h*0.40+sin(frameCount*0.12+pulse)*6,

        10,

        10

      );

      ellipse(

        x+w*0.70,

        y+h*0.65+cos(frameCount*0.15+pulse)*8,

        14,

        14

      );

    }

    popMatrix();

  }

}
