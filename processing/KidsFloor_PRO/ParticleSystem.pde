
class ParticleSystem{

ArrayList<Particle> particles;

ParticleSystem(){

particles=new ArrayList<Particle>();

}

void update(){

for(int i=0;i<3;i++){

    particles.add(

      new Particle(

        random(width),

        random(height)

      )

    );

}

void render(){

blendMode(ADD);

for(Particle p:particles){

p.render();

}

blendMode(BLEND);

}

}
