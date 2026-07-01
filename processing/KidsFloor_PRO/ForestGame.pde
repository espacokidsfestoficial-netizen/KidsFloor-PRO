class ForestGame extends InteractiveGame {

  TreeStump[] stumps;

 int currentStump = -1;

  int score = 0;

  ForestGame() {

    super("Forest Stomp");

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

    mole = new Mole();

    nextMole();

  }

void nextMole() {

  int next;

  do {
    next = int(random(stumps.length));
  } while (next == currentStump);

  currentStump = next;

  }
  void update() {

       if (!mole.visible) {

  void nextMole(){

  if(currentStump!=-1){

    stumps[currentStump].active=false;

  }

  int next;

  do{

    next=int(random(9));

  }while(next==currentStump);

  currentStump=next;

  stumps[currentStump].active=true;

}

    }

    // Mouse temporário (depois será Kinect)

    if (mousePressed && mole.visible) {

      TreeStump s = stumps[currentStump];

      if (s.contains(mouseX, mouseY)) {

        score++;

            }

    }

  }

  void render() {

    drawBackground();

    for (TreeStump s : stumps) {

      s.render();

    }

      drawHUD();

  }

  void drawBackground() {

    background(90, 170, 90);

  }

  void drawHUD() {

    fill(255);

    textAlign(LEFT);

    textSize(28);

    text("Score: " + score, 20, 40);

    textAlign(CENTER);

    text("FOREST STOMP", width / 2, 40);

  }

}
