class TuioManager {

  boolean connected = false;

  ArrayList<PVector> touches;

  TuioManager() {

    touches = new ArrayList<PVector>();

  }

  void update() {

    if (!connected) return;

    // Futuramente receberá os pontos do TUIO

  }

  void connect() {

    connected = true;

  }

  void disconnect() {

    connected = false;

  }

  boolean isConnected() {

    return connected;

  }

  ArrayList<PVector> getTouches() {

    return touches;

  }

}
