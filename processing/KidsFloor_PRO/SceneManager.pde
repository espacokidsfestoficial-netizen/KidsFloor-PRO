class SceneManager{

  SplashScene splash;
  MenuScene menu;

  Engine engine;

  int scene=0;

  final int SPLASH=0;
  final int MENU=1;

  SceneManager(){

    splash=new SplashScene();
    menu=new MenuScene();

    engine=new Engine();

  }

  void update(){

    switch(scene){

    case SPLASH:

      splash.update();

      engine.update();

      if(frameCount>240){

        scene=MENU;

      }

      break;

    case MENU:

      menu.update();

      engine.update();

      break;

    }

  }

  void render(){

    switch(scene){

    case SPLASH:

      splash.render();

      engine.render();

      break;

    case MENU:

      menu.render();

      break;

    }

  }

}
