class FootTracker {

  VirtualCursor cursor;

  FootTracker() {

    cursor = new VirtualCursor();

  }

  void update() {

    cursor.update();

  }

  PVector getPosition() {

    return cursor.getPosition();

  }

  float getSpeed() {

    return cursor.getSpeed();

  }

  void renderDebug() {

    cursor.render();

  }

}
