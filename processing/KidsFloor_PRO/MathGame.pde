class MathGame extends InteractiveGame {

  MathGenerator generator;
  MathQuestion question;
  AnswerPad[] options;
  MathHUD hud;

  int score = 0;
int gameTime = 120;      // segundos
int startTime;
boolean gameOver = false;

  boolean canAnswer = true;

  MathGame() {

    super("Math Adventure");

    generator = new MathGenerator();
    hud = new MathHUD();

   options = new AnswerPad[4];

float y = height * 0.73;

options[0] = new AnswerPad(width*0.18,y,color(70,170,255));
options[1] = new AnswerPad(width*0.39,y,color(255,90,90));
options[2] = new AnswerPad(width*0.61,y,color(80,220,120));
options[3] = new AnswerPad(width*0.82,y,color(255,190,60));

    nextQuestion();

startTime = millis();
  }

  void nextQuestion() {

    question = generator.create();

    int correct = int(random(4));

    options[correct].value = question.answer;

    for (int i = 0; i < 4; i++) {

      if (i == correct) continue;

      int v;

      do {

        v = question.answer + int(random(-4, 5));

      } while (v == question.answer || v < 0);

      options[i].value = v;

    }

  }

  void update() {

    for(AnswerPad op : options) {

      op.animScale = lerp(op.animScale, 1.0, 0.15);

    }

if (gameOver) return;

int elapsed = (millis() - startTime) / 1000;

if (elapsed >= gameTime) {

  gameOver = true;
  return;

}

    if (mousePressed && canAnswer) {

      for(AnswerPad op : options) {

        if (op.contains(mouseX, mouseY)) {

          op.animScale = 1.18;

          if (op.value == question.answer) {

            score++;
if (score == 10) generator.nextLevel();

if (score == 20) generator.nextLevel();

          }

          nextQuestion();

          canAnswer = false;

          break;

        }

      }

    }

if (!mousePressed) {

  canAnswer = true;

}

if (gameOver && keyPressed && key == ENTER) {

  score = 0;

  generator = new MathGenerator();

  nextQuestion();

  startTime = millis();

  gameOver = false;

}

} 

void render() {

    background(25, 40, 80);

    // Degradê
    for (int y = 0; y < height; y += 4) {

      stroke(
        25 + y * 0.03,
        40 + y * 0.02,
        80 + y * 0.01
      );

      line(0, y, width, y);

    }

    fill(255);

    textAlign(CENTER);

    textSize(60);

    text(question.text, width / 2, 120);

    fill(220);

    textSize(24);

    text("Pise na resposta correta!", width / 2, 170);

    for(AnswerPad op : options) {

      op.render();

    }

  hud.render(score, generator.level);

int remaining = max(0, gameTime - (millis() - startTime) / 1000);

fill(255);

textAlign(RIGHT);

textSize(32);

text("Tempo: " + remaining, width - 30, 40);

if (gameOver) {

  fill(0,180);

  rectMode(CORNER);

  rect(0,0,width,height);

  fill(255);

  textAlign(CENTER);

  textSize(64);

  text("FIM DE JOGO", width/2, height/2-70);

  textSize(42);

  text("Pontuação: " + score, width/2, height/2);

  textSize(26);

  text("Pressione ENTER para jogar novamente",
       width/2,
       height/2+70);

}
}
