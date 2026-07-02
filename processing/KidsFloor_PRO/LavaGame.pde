class LavaGame extends InteractiveGame {

  LavaGrid grid;
LavaBackground lava;
LavaManager manager;

  LavaGame(){

    super("Lava Escape");

    grid=new LavaGrid();

lava = new LavaBackground();
manager = new LavaManager(grid);

  }

  void update(){

lava.update();

manager.update();

grid.update();

  }

  void render(){

    lava.render();

    grid.render();

manager.renderHUD();

    fill(255);

    textAlign(CENTER);

    textSize(40);

    text("LAVA ESCAPE",width/2,50);

  }

}
