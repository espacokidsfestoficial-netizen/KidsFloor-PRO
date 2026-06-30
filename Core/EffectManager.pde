
class EffectManager {

  SmokeSystem smoke;

  EffectManager() {

    smoke = new SmokeSystem();

  }

  void update() {

    if (sceneManager == null) return;
    if (sceneManager.engine == null) return;

    FootTracker foot = sceneManager.engine.getTracker();

    smoke.emit(
      foot.getPosition().x,
      foot.getPosition().y,
      foot.getSpeed()
    );

    smoke.update();

  }

  void render() {

    smoke.render();

  }

}
