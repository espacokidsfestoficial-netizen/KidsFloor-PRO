class LavaGame extends InteractiveGame {

  LavaGrid grid;
LavaBackground lava;
LavaManager manager;
LavaPlayer player;

  LavaGame(){

    super("Lava Escape");

    grid=new LavaGrid();

lava = new LavaBackground();
manager = new LavaManager(grid);
player = new LavaPlayer();

  }

  void update(){

lava.update();

manager.update();

grid.update();

player.update();

if (manager.state == 2 && player.alive) {

  if (!grid.isSafe(player.x, player.y)) {

    player.alive = false;

  }

}

  }

  void render(){

    lava.render();

    grid.render();

player.render();

manager.renderHUD();

    fill(255);

    textAlign(CENTER);

    textSize(40);

    text("LAVA ESCAPE",width/2,50);

  }

}
if (!player.alive) {

  fill(0,180);

  rectMode(CORNER);

  rect(0,0,width,height);

  fill(255);

  textAlign(CENTER);

  textSize(70);

  text("GAME OVER", width/2, height/2);

}
