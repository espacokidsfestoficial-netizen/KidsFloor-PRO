class TicTacToeGame extends InteractiveGame {

  int[][] board = new int[3][3];

  TicTacToeGame() {

    super("Jogo da Velha");

  }

  void update() {

    // Será implementado na próxima etapa

  }

  void render() {

    background(15,20,35);

    stroke(255);

    strokeWeight(6);

    float s = 140;

    float ox = width/2 - s*1.5;
    float oy = height/2 - s*1.5;

    // Linhas verticais
    line(ox+s, oy, ox+s, oy+s*3);
    line(ox+s*2, oy, ox+s*2, oy+s*3);

    // Linhas horizontais
    line(ox, oy+s, ox+s*3, oy+s);
    line(ox, oy+s*2, ox+s*3, oy+s*2);

    fill(255);

    textAlign(CENTER);

    textSize(32);

    text("JOGO DA VELHA", width/2, 80);

    textSize(18);

    text("Em breve: seleção pelo Kinect", width/2, 120);

  }

}
