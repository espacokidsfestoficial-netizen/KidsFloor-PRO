class TouchManager {

  PVector touch;
  boolean active;

  TouchManager() {

    touch = new PVector();
    active = false;

  }

  void update() {

    // Entrada temporária usando o mouse
    touch.set(mouseX, mouseY);

    active = true;

  }

  PVector getPosition() {

    return touch;

  }

  boolean isActive() {

    return active;

  }

}
