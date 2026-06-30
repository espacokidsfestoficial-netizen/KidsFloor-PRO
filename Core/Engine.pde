class Engine {

  EffectManager effects;

  boolean enabled = true;

  Engine() {

    effects = new EffectManager();

  }

  void update() {

    if (!enabled) return;

    effects.update();

  }

  void render() {

    if (!enabled) return;

    effects.render();

  }

  void enable() {

    enabled = true;

  }

  void disable() {

    enabled = false;

  }

}
