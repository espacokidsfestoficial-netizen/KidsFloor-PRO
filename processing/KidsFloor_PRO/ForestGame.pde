class ForestGame extends InteractiveGame {

  TreeStump[] stumps;

LeafSystem leaves;

  int currentStump = -1;

  int score = 0;

  int lastChange = 0;

  ForestGame() {

    super("Forest Stomp");

leaves = new LeafSystem();

    stumps = new TreeStump[9];

    float spacingX = width / 4.0;
    float spacingY = height / 4.0;

    int index = 0;

    for (int row = 1; row <= 3; row++) {

      for (int col = 1; col <= 3; col++) {

        stumps[index++] = new TreeStump(
          col * spacingX,
          row * spacingY,
          120
        );

      }

    }

    nextMole();

    lastChange = millis();

  }

  void nextMole() {

    if (currentStump != -1) {
      stumps[currentStump].active = false;
    }

    int next;

    do {

      next = int(random(stumps.length));

    } while (next == currentStump);

    currentStump = next;

    stumps[currentStump].active = true;

    lastChange = millis();

  }

  void update() {

leaves.update();

    // troca sozinho a cada 2 segundos

    if (millis() - lastChange > 2000) {

      nextMole();

    }

    // clique (depois será Kinect)

    if (mousePressed) {

      if (stumps[currentStump].contains(mouseX, mouseY)) {

      score++;

leaves.explode(
    stumps[currentStump].x,
    stumps[currentStump].y
);

nextMole();

      }

    }

  }

  void render() {

   if(imgForest!=null){

  imageMode(CORNER);

  image(imgForest,0,0,width,height);

}else{

  background(90,170,90);

}

    for (TreeStump s : stumps) {

      s.render();

leaves.render();

    }

    fill(255);

    textAlign(LEFT);

    textSize(28);

    text("Score: " + score, 20, 40);

    textAlign(CENTER);

    text("FOREST STOMP", width/2, 40);

  }

}
