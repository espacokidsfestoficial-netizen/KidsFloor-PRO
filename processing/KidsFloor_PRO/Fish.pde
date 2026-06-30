class Fish {

  PVector pos;
  PVector vel;
  PVector acc;

  float bodyLength;
  float bodyHeight;

  float tailAngle = 0;
  float tailSpeed;

  color bodyColor;

  Fish() {

    pos = new PVector(random(width), random(height));

    vel = PVector.random2D();

    vel.mult(random(1.2,2.5));

    acc = new PVector();

    bodyLength = random(35,60);
    bodyHeight = bodyLength*0.45;

    tailSpeed=random(0.15,0.28);

    bodyColor=color(
      random(80,255),
      random(80,255),
      random(120,255)
    );

  }

  void update(PVector foot){

    float d=PVector.dist(pos,foot);

    if(d<180){

      PVector flee=PVector.sub(pos,foot);

      flee.normalize();

      flee.mult(map(d,0,180,0.8,0.05));

      acc.add(flee);

    }

    if(random(1)<0.02){

      PVector wander=PVector.random2D();

      wander.mult(0.4);

      acc.add(wander);

    }

    vel.add(acc);

    vel.limit(3);

    pos.add(vel);

    acc.mult(0);

    tailAngle+=tailSpeed;

    if(pos.x<-80) pos.x=width+80;
    if(pos.x>width+80) pos.x=-80;

    if(pos.y<-80) pos.y=height+80;
    if(pos.y>height+80) pos.y=-80;

  }

  void render(){

    pushMatrix();

    translate(pos.x,pos.y);

    rotate(vel.heading());

    noStroke();

    fill(bodyColor);

    ellipse(0,0,bodyLength,bodyHeight);

    float swing=sin(tailAngle)*12;

    triangle(
      -bodyLength*0.45,0,
      -bodyLength*0.95,-bodyHeight*0.5+swing,
      -bodyLength*0.95, bodyHeight*0.5+swing
    );

    fill(255);

    circle(bodyLength*0.22,-4,5);

    fill(0);

    circle(bodyLength*0.22,-4,2);

    popMatrix();

  }

}
