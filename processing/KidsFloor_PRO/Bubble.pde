class Bubble{

  PVector pos;

  float speed;

  float radius;

  float alpha;

  Bubble(){

    reset();

    pos.y=random(height);

  }

  void reset(){

    pos=new PVector(random(width),height+random(100));

    speed=random(0.6,2.2);

    radius=random(4,16);

    alpha=random(120,220);

  }

  void update(){

    pos.y-=speed;

    pos.x+=sin(frameCount*0.03+pos.y*0.02)*0.4;

    if(pos.y<-30){

      reset();

    }

  }

void render(){

  noFill();

  strokeWeight(2);

  stroke(220,245,255,alpha);

  circle(pos.x,pos.y,radius);

  noStroke();

  fill(255,alpha*0.35);

  circle(
    pos.x-radius*0.18,
    pos.y-radius*0.18,
    radius*0.22
  );

}

}
