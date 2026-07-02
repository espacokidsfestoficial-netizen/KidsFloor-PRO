class LavaGame extends InteractiveGame {

  LavaGrid grid;
LavaBackground lava;

  LavaGame(){

    super("Lava Escape");

    grid=new LavaGrid();

lava = new LavaBackground();

  }

  void update(){

    grid.update();
lava.update();
grid.update();

  }

  void render(){

    lava.render();

    grid.render();

    fill(255);

    textAlign(CENTER);

    textSize(40);

    text("LAVA ESCAPE",width/2,50);

  }

}
