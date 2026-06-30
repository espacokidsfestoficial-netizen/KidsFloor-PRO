class VirtualCursor {

  PVector position;
  PVector velocity;
  PVector previous;

  VirtualCursor() {

    position = new PVector(width/2, height/2);
    previous = position.copy();
    velocity = new PVector();

  }

  void update() {

    previous.set(position);

    // Modo de teste (mouse)
    position.set(mouseX, mouseY);

    velocity.set(
      position.x - previous.x,
      position.y - previous.y
    );

  }

  PVector getPosition() {

    return position;

  }

  float getSpeed() {

    return velocity.mag();

  }

  void render() {

    noFill();
    stroke(0,255,255);
    strokeWeight(3);

    ellipse(position.x, position.y, 40,40);

    stroke(255);

    line(
      position.x,
      position.y,
      position.x + velocity.x*8,
      position.y + velocity.y*8
    );

  }

}
