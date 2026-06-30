class Engine {

  EffectManager effects;
  InputManager input;
  FootTracker tracker;

  boolean enabled = true;

  Engine() {

    effects = new EffectManager();
    input = new InputManager();
    tracker = new FootTracker();

  }

  void update() {

    if (!enabled) return;

    input.update();
    tracker.update();
    effects.update();

  }

  void render() {

    if (!enabled) return;

    effects.render();

    // Debug (vamos remover depois)
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
