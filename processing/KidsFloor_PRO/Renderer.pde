
class Renderer {

  BackgroundFX background;

  Renderer() {

    background = new BackgroundFX();

  }

  void update() {

    background.update();

  }

  void render() {

    background.render();

  }

}
