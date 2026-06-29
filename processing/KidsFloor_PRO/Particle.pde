
class Particle{

PVector position;

PVector velocity;

float life;

float size;

Particle(float x,float y){

position=new PVector(x,y);

velocity=PVector.random2D();

velocity.mult(random(0.2,1.5));

life=255;

size=random(2,7);

}

boolean dead(){

return life<=0;

}

void update(){

position.add(velocity);

velocity.mult(0.99);

life-=1.2;

}

void render() {

  noStroke();

  fill(80,170,255,life*0.25);
  circle(position.x, position.y, size*4);

  fill(120,220,255,life);
  circle(position.x, position.y, size);

}

}
