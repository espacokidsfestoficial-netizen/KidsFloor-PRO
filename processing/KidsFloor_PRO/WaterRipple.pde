class WaterRipple {

  PVector pos;

  float radius;
  float alpha;
  float speed;
  float thickness;

  WaterRipple(float x,float y,float force){

    pos=new PVector(x,y);

    radius=8;

    speed=map(force,0,30,2,8);

    thickness=random(2,5);

    alpha=220;

  }

  void update(){

    radius+=speed;

    alpha-=2.2;

    thickness*=0.995;

  }

  boolean dead(){

    return alpha<=0;

  }

  void render(){

    noFill();

    strokeWeight(thickness);

    stroke(120,220,255,alpha);

    ellipse(pos.x,pos.y,radius,radius);

    strokeWeight(thickness*0.5);

    stroke(255,255,255,alpha*0.4);

    ellipse(pos.x,pos.y,radius*0.75,radius*0.75);

  }

}
