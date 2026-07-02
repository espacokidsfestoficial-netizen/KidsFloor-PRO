class LavaPlayer {

  boolean alive = true;

  float x;
  float y;

  void update() {

    FootTracker foot = sceneManager.engine.getTracker();

    x = foot.getPosition().x;
    y = foot.getPosition().y;

  }

  void render() {

    if (!alive) return;

    noStroke();

    fill(0,255,255);

    ellipse(x,y,40,40);

  }

}
