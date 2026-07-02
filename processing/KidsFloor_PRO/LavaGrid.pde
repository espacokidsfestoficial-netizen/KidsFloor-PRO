class LavaGrid {

  LavaTile[][] tiles;

  int cols = 8;
  int rows = 6;

  float tileSize = 110;

  LavaGrid() {

    tiles = new LavaTile[cols][rows];

    float startX = width/2 - (cols-1)*tileSize/2;

    float startY = height/2 - (rows-1)*tileSize/2;

    for(int y=0;y<rows;y++){

      for(int x=0;x<cols;x++){

        tiles[x][y]=new LavaTile(

          startX+x*tileSize,

          startY+y*tileSize,

          95,

          95

        );

      }

    }

  }

  void update(){

    for(int y=0;y<rows;y++)
      for(int x=0;x<cols;x++)
        tiles[x][y].update();

  }

  void render(){

    for(int y=0;y<rows;y++)
      for(int x=0;x<cols;x++)
        tiles[x][y].render();

  }

}
