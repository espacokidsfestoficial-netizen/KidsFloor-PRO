class MathGenerator {

  MathQuestion create(){

    int a=int(random(1,10));

    int b=int(random(1,10));

    return new MathQuestion(a,b);

  }

}
