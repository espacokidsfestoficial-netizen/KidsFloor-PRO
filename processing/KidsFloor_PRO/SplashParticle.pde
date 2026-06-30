class SplashParticle {

  PVector pos;
  PVector vel;

  float size;
  float alpha;

  SplashParticle(float x, float y, float force) {

    pos = new PVector(x, y);

    float ang = random(PI, TWO_PI);

    vel = PVector.fromAngle(ang);

    vel.mult(random(2, 6) + force * 0.15);

    size = random(3, 8);

    alpha = 255;

  }

  void update() {

    vel.y += 0.18;

    pos.add(vel);

    alpha -= 5;

  }

  boolean dead() {

    return alpha <= 0;

  }

void render(){

  noStroke();

  fill(180,240,255,alpha);

  ellipse(pos.x,pos.y,size,size);

  fill(255,alpha*0.25);

  ellipse(pos.x,pos.y,size*2,size*2);

}
