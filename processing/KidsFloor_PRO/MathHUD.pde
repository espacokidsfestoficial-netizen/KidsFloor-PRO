class MathHUD {

  void render(int score, int level) {

    // Barra superior
    noStroke();
    fill(15, 25, 55, 220);
    rect(0, 0, width, 80);

    fill(255);

    textAlign(LEFT, CENTER);
    textSize(30);
    text("⭐ Pontos: " + score, 25, 40);

    textAlign(CENTER, CENTER);
    textSize(34);
    text("MATH ADVENTURE", width/2, 40);

    textAlign(RIGHT, CENTER);
    textSize(30);
    text("Nível " + level, width-25, 40);

  }

}
