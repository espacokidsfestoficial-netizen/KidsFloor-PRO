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

    if (mousePressed && canAnswer) {

      for (MathOption op : options) {

        if (op.contains(mouseX, mouseY)) {

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

  void render() {

    background(25,40,80);

    fill(255);

    textAlign(CENTER);

    textSize(60);

    text(question.text, width/2, 120);

    for (MathOption op : options) {

      op.render();

    }

    fill(255);

    textAlign(LEFT);

    textSize(30);

    text("Score: "+score,30,40);

  }

}
