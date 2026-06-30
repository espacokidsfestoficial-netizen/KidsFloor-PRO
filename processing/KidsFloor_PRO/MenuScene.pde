class MenuScene {

  String[] games = {
    "1 - Interactive Water",
    "2 - Fire Spirit",
    "3 - Water + Fire",
    "4 - Stars",
    "5 - Galaxy",
    "6 - Tic Tac Toe"
  };

  void update() {

  }

  void render() {

    background(8,12,25);

    fill(255);

    textAlign(CENTER);

    textSize(54);

    text("KIDSFLOOR PRO", width/2,90);

    textSize(22);

    text("Espaço Kids Fest",width/2,130);

    textSize(28);

    for(int i=0;i<games.length;i++){

      float y=220+i*60;

      fill(40,120,220);

      rectMode(CENTER);

      rect(width/2,y,420,42,10);

      fill(255);

      text(games[i],width/2,y+8);

    }

  }

}
