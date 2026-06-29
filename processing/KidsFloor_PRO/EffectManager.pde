class EffectManager{

  SmokeSystem smoke;

  EffectManager(){

    smoke=new SmokeSystem();

  }

  void update(){

    smoke.emit(mouseX,mouseY);

    smoke.update();

  }

  void render(){

    smoke.render();

  }

}
