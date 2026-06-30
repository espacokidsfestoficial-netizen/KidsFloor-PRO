class Engine {

  EffectManager effects;
  InputManager input;
  FootTracker tracker;
  Renderer renderer;
  TouchManager touch;
  KinectManager kinect;

  boolean enabled = true;

  Engine() {

    effects = new EffectManager();
    input = new InputManager();
    tracker = new FootTracker();
    renderer = new Renderer();
    touch = new TouchManager();
    kinect = new KinectManager();

  }

  void update() {

    if (!enabled) return;

    input.update();
    touch.update();
    kinect.update();
    tracker.update();
    renderer.update();
    effects.update();

  }

  void render() {

    if (!enabled) return;

    renderer.render();
    effects.render();
    tracker.renderDebug();

  }

  KinectManager getKinect() {

    return kinect;

  }

  TouchManager getTouchManager() {

    return touch;

  }

  FootTracker getTracker() {

    return tracker;

  }

  void enable() {

    enabled = true;

  }

  void disable() {

    enabled = false;

  }

}
