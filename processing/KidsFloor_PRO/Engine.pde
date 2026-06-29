class Engine{

  EffectManager effects;

  Engine(){

    effects=new EffectManager();

  }

  void update(){

    effects.update();

  }

  void render(){

    effects.render();

  }

}
