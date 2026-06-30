
class FootTracker {

  PVector foot;
  PVector lastFoot;
  PVector velocity;

  FootTracker() {

    foot = new PVector();
    lastFoot = new PVector();
    velocity = new PVector();

  }

  void update() {

    lastFoot.set(foot);

    // Modo de teste (mouse)
    foot.set(mouseX, mouseY);

    velocity.set(
      foot.x - lastFoot.x,
      foot.y - lastFoot.y
    );

  }

  PVector getPosition() {

    return foot;

  }

  float getSpeed() {

    return velocity.mag();

  }

  void renderDebug() {

    noFill();
    stroke(0, 255, 255);
    strokeWeight(3);

    ellipse(foot.x, foot.y, 60, 60);

    stroke(255);

    line(
      foot.x,
      foot.y,
      foot.x + velocity.x * 8,
      foot.y + velocity.y * 8
    );

  }

}
