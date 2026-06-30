class Engine {

  EffectManager effects;
  InputManager input;
  FootTracker tracker;
  Renderer renderer;

  boolean enabled = true;

  Engine() {

    effects = new EffectManager();
    input = new InputManager();
    tracker = new FootTracker();
    renderer = new Renderer();

  }

  void update() {

    if (!enabled) return;

    input.update();
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
