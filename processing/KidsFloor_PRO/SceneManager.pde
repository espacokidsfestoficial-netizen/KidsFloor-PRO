class SceneManager{

  SplashScene splash;

  Engine engine;

  SceneManager(){

    splash=new SplashScene();

    engine=new Engine();

  }

  void update(){

    splash.update();

    engine.update();

  }

  void render(){

    splash.render();

    engine.render();

  }

}
