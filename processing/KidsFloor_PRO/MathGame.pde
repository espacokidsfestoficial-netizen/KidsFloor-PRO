class MathGame extends InteractiveGame {

  MathGenerator generator;

  MathQuestion question;

  MathOption[] options;

  int score = 0;

  boolean canAnswer = true;

  MathGame() {

    super("Math Adventure");

    generator = new MathGenerator();

    options = new MathOption[4];

    float y = height * 0.72;

    options[0] = new MathOption(width*0.20, y, 120);
    options[1] = new MathOption(width*0.40, y, 120);
    options[2] = new MathOption(width*0.60, y, 120);
    options[3] = new MathOption(width*0.80, y, 120);

    nextQuestion();

  }

  void nextQuestion() {

    question = generator.create();

    int correct = int(random(4));

    options[correct].value = question.answer;

    for (int i=0; i<4; i++) {

      if (i == correct) continue;

      int v;

      do {

        v = question.answer + int(random(-4,5));

      } while (v == question.answer || v < 0);

      options[i].value = v;

    }

  }

void update() {

  for (MathOption op : options) {

    op.scale = lerp(op.scale, 1.0, 0.15);


    for (MathOption op : options) {

      if (op.contains(mouseX, mouseY)) {

        op.scale = 1.18;

        if (op.value == question.answer) {

          score++;

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

}
    }

    if (!mousePressed) {

      canAnswer = true;

    }

  }

  void render() {

    background(25,40,80);

// Fundo com degradê simples
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

    text(question.text, width/2, 120);

fill(220);

textSize(24);

text("Pise na resposta correta!", width/2, 170);

    for (MathOption op : options) {

      op.render();

    }

    fill(255);

    textAlign(LEFT);

    textSize(30);

   fill(255);

textSize(34);

text("⭐ " + score, 30, 40);

  }

}
