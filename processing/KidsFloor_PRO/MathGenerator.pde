class MathGenerator {

  int level = 1;

  MathQuestion create() {

    int a = 0;
    int b = 0;

    switch(level) {

    case 1:

      a = int(random(1,10));
      b = int(random(1,10));
      return new MathQuestion(a,b);

    case 2:

      a = int(random(5,20));
      b = int(random(5,20));
      return new MathQuestion(a,b);

    case 3:

      a = int(random(10,50));
      b = int(random(10,50));
      return new MathQuestion(a,b);

    }

    return new MathQuestion(1,1);

  }

  void nextLevel() {

    if(level < 3){

      level++;

    }

  }

}
