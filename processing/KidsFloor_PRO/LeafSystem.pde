class LeafSystem {

  ArrayList<LeafParticle> particles =
    new ArrayList<LeafParticle>();

  void explode(float x,float y){

    for(int i=0;i<25;i++){

      particles.add(new LeafParticle(x,y));

    }

  }

  void update(){

    for(int i=particles.size()-1;i>=0;i--){

      LeafParticle p=particles.get(i);

      p.update();

      if(p.dead()){

        particles.remove(i);

      }

    }

  }

  void render(){

    for(LeafParticle p:particles){

      p.render();

    }

  }

}
