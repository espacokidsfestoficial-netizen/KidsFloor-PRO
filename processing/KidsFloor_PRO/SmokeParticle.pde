class SmokeParticle{

  PVector pos;
  PVector vel;

  float size;
  float alpha;

  color c;

  SmokeParticle(float x,float y){

    pos=new PVector(x,y);

    vel=PVector.random2D();

    vel.mult(random(0.4,2.0));

    size=random(25,70);

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

    alpha-=2.5;

    size+=0.30;

  }

  boolean dead(){

    return alpha<=0;

  }

  void render(){

    noStroke();

    fill(c,alpha);

    ellipse(pos.x,pos.y,size,size);

  }

}
