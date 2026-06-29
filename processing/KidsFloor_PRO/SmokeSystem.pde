class SmokeSystem{

  ArrayList<SmokeParticle> particles;

  SmokeSystem(){

    particles=new ArrayList<SmokeParticle>();

  }

  void emit(float x,float y){

    for(int i=0;i<5;i++){

      particles.add(

        new SmokeParticle(x,y)

      );

    }

  }

  void update(){

    for(int i=particles.size()-1;i>=0;i--){

      SmokeParticle p=particles.get(i);

      p.update();

      if(p.dead()){

        particles.remove(i);

      }

    }

  }

  void render(){

    blendMode(ADD);

    for(SmokeParticle p:particles){

      p.render();

    }

    blendMode(BLEND);

  }

}
