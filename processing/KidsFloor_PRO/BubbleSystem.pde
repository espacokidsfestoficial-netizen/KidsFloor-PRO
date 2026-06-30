import java.util.ArrayList;

class BubbleSystem{

  ArrayList<Bubble> bubbles;

  BubbleSystem(){

    bubbles=new ArrayList<Bubble>();

    for(int i=0;i<90;i++){

      bubbles.add(new Bubble());

    }

  }

  void update(){

    for(Bubble b:bubbles){

      b.update();

    }

  }

  void render(){

    blendMode(ADD);

    for(Bubble b:bubbles){

      b.render();

    }

    blendMode(BLEND);

  }

}
