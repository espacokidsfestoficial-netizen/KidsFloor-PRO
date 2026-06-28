class SceneManager{

  SplashScene splash;

  SceneManager(){

      splash=new SplashScene();

  }

  void update(){

      splash.update();

  }

  void render(){

      splash.render();

  }

}
