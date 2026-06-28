
class SplashScene{

ParticleSystem particles;

float alpha=0;

boolean fade=true;

SplashScene(){

particles=new ParticleSystem();

}

void update(){

particles.update();

if(fade){

alpha+=0.4;

if(alpha>255){

alpha=255;

}

}

}

void render(){

background(0);

particles.render();

fill(255,alpha);

textAlign(CENTER,CENTER);

textSize(58);

text("Espaço Kids Fest",width/2,height/2);

textSize(22);

text("Interactive Floor System",width/2,height/2+55);

}

}
