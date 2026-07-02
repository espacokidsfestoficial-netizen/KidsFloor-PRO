class LavaGame extends InteractiveGame {

  LavaGrid grid;

  LavaGame(){

    super("Lava Escape");

    grid=new LavaGrid();

  }

  void update(){

    grid.update();

  }

  void render(){

    background(20,20,30);

    grid.render();

    fill(255);

    textAlign(CENTER);

    textSize(40);

    text("LAVA ESCAPE",width/2,50);

  }

}
