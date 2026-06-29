class SmokeParticle{

  PVector pos;
  PVector vel;

  float size;
  float alpha;

  color c;

  SmokeParticle(float x,float y){

    pos=new PVector(x,y);

   float ang=random(TWO_PI);

   vel=new PVector(cos(ang),sin(ang));

   vel.mult(random(0.2,3.2));

   size=random(20,55);

    alpha=255;

    c=color(
      random(80,150),
      random(180,255),
      255
    );

  }

  void update(){

    pos.add(vel);

    vel.mult(0.985);

    alpha-=random(1.5,3.5);

    size+=0.55;

  }

  boolean dead(){

    return alpha<=0;

  }

void render() {

  noStroke();

  fill(c, alpha * 0.15);
  ellipse(pos.x, pos.y, size * 2.2, size * 2.2);

  fill(c, alpha * 0.45);
  ellipse(pos.x, pos.y, size * 1.5, size * 1.5);

  fill(c, alpha);
  ellipse(pos.x, pos.y, size, size);

}
