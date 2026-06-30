class KinectManager {

  boolean connected = false;

  PVector leftFoot;
  PVector rightFoot;

  KinectManager() {

    leftFoot = new PVector();
    rightFoot = new PVector();

  }

  void update() {

    if (!connected) return;

    // Futuramente:
    // leftFoot.set(...);
    // rightFoot.set(...);

  }

  boolean isConnected() {

    return connected;

  }

  void connect() {

    connected = true;

  }

  void disconnect() {

    connected = false;

  }

  PVector getLeftFoot() {

    return leftFoot;

  }

  PVector getRightFoot() {

    return rightFoot;

  }

}
