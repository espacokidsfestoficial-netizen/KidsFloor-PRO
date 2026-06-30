class MenuScene {

  String[] games = {
    "Interactive Water",
    "Fire Spirit",
    "Water + Fire",
    "Stars",
    "Galaxy",
    "Tic Tac Toe",
    "Aquarium Premium",
    "Forest Stomp"
  };

  int selected = 0;

  boolean upPressed = false;
  boolean downPressed = false;
  boolean enterPressed = false;

  void update() {

    if (keyPressed) {

      if (keyCode == UP && !upPressed) {

        selected--;

        if (selected < 0)
          selected = games.length - 1;

        upPressed = true;
      }

      if (keyCode == DOWN && !downPressed) {

        selected++;

        if (selected >= games.length)
          selected = 0;

        downPressed = true;
      }

      if ((key == ENTER || key == RETURN) && !enterPressed) {

        sceneManager.scene = 2;

        sceneManager.engine.game.setGame(selected);

        enterPressed = true;

      }

    } else {

      upPressed = false;
      downPressed = false;
      enterPressed = false;

    }

  }

  void render() {

    background(8, 12, 25);

    fill(255);

    textAlign(CENTER);

    textSize(54);

    text("KIDSFLOOR PRO", width/2, 90);

    textSize(22);

    text("Espaço Kids Fest", width/2, 130);

    for (int i = 0; i < games.length; i++) {

      float y = 220 + i * 65;

      rectMode(CENTER);

      if (i == selected) {

        fill(0, 170, 255);

      } else {

        fill(35, 45, 70);

      }

      noStroke();

      rect(width/2, y, 420, 48, 12);

      fill(255);

      textSize(24);

      text(games[i], width/2, y + 8);

    }

    textSize(18);

    fill(180);

    text("↑ ↓  Selecionar   |   ENTER  Abrir", width/2, height - 40);

  }

}
