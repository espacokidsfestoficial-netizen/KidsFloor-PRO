class Engine {

  Renderer renderer;
  InputManager input;
  TouchManager touch;
  FootTracker tracker;
  KinectManager kinect;
  TuioManager tuio;
  
  GameManager game;

  EffectManager effects;

  Engine() {

    renderer = new Renderer();

    input = new InputManager();

    touch = new TouchManager();

    tracker = new FootTracker();

    kinect = new KinectManager();

    tuio = new TuioManager();

    game = new GameManager();

    effects = new EffectManager();

  }

setup() {

imgForest = loadImage("forest.png");
imgStump = loadImage("stump.png");
imgMole = loadImage("mole.png");

}

  void update() {

    input.update();

    touch.update();

    kinect.update();

    tuio.update();

    tracker.update();

    renderer.update();

    game.update();

  }

  void render() {

    renderer.render();

    game.render();

    tracker.renderDebug();

  }

  FootTracker getTracker() {

    return tracker;

  }

}
