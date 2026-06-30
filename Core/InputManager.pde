
class InputManager {

  boolean click = false;

  void update() {

    click = mousePressed;

  }

  boolean isClick() {

    return click;

  }

  PVector getPointer() {

    return new PVector(mouseX, mouseY);

  }

}
