class AquariumGame extends InteractiveGame {

  ArrayList<Fish> fishes;

  BubbleSystem bubbles;
  PlantSystem plants;
  LightSystem lights;

  WaterSystem water;
  SplashSystem splash;

  AquariumGame() {

    super("Aquarium");

    fishes = new ArrayList<Fish>();

    for (int i = 0; i < 30; i++) {

      fishes.add(new Fish());

    }

    bubbles = new BubbleSystem();
    plants = new PlantSystem();
    lights = new LightSystem();

    water = new WaterSystem();
    splash = new SplashSystem();

  }

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    PVector p = foot.getPosition();

    float speed = foot.getSpeed();

    lights.update();

    bubbles.update();

    plants.update();

    water.emit(p.x, p.y, speed);

    splash.emit(p.x, p.y, speed);

    water.update();

    splash.update();

    for (Fish f : fishes) {

      f.update(p);

    }

  }

  void render() {

    drawBackground();

    lights.render();

    water.render();

    plants.render();

    bubbles.render();

    for (Fish f : fishes) {

      f.render();

    }

    splash.render();

    drawHUD();

  }

  void drawBackground() {

    noStroke();

    for (int y = 0; y < height; y++) {

      float t = map(y, 0, height, 0, 1);

      fill(

        lerpColor(

          color(0, 70, 140),

          color(0, 25, 70),

          t

        )

      );

      rect(0, y, width, 1);

    }

  }

  void drawHUD() {

    fill(255);

    textAlign(CENTER);

    textSize(30);

    text("AQUARIUM PREMIUM", width/2, 45);

    textSize(18);

    text("Mova o mouse para assustar os peixes", width/2, 75);

  }

}
