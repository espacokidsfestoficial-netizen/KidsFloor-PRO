class Engine {

  EffectManager effects;
  InputManager input;
  FootTracker tracker;
  Renderer renderer;
  TouchManager touch;

  boolean enabled = true;

  Engine() {

    effects = new EffectManager();
    input = new InputManager();
    tracker = new FootTracker();
    renderer = new Renderer();
    touch = new TouchManager();

  }

  void update() {

    if (!enabled) return;

    input.update();
    touch.update();
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
